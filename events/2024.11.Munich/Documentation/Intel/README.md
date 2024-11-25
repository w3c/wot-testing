# AI Services
Provided remotely by Intel.
See [TDs](../../TDs/Intel/README.md).

## Ollama LLM Server
This is running an LLM inference engine that can run a number of different
models.  See [https://github.com/ollama/ollama](https://github.com/ollama/ollama).  The service is 
running on a largish desktop machine with 128GB of DRAM and dual Intel Arc Alchemist 770 cards with
16GB of VRAM each.  Ollama is smart enough to partition larger models to run partially
on the GPU and partially on the CPU as needed.  Because of this, smaller models
that fit completely in VRAM will run significantly faster.  The models described
below are 4-bit quantized and the default models will fit completely in VRAM
having only 7 billion parameters or so.  However, the larger 70 billion parameter
models will need to run partially on CPU.  The largest available model, with 405 billion parameters,
should NOT be used (in theory it will work, but it will have to be streamed from disk
and will be very very slow, and will make the machine unusable for other task, so please don't try...).

The TD currently describes "generate" and "chat" endpoints only.  The full
REST API is described here: [https://github.com/ollama/ollama/blob/main/docs/api.md](https://github.com/ollama/ollama/blob/main/docs/api.md).
If there is a need for other endpoints, e.g. for embeddings or to instantiate
a custom Modelfile, please let me know.

The default interface for "generate" uses streamed JSON objects, which are not
representable in TD data schemas, and so won't work with WoT scripting API, etc.
We should fix that... but in the meantime, it is recommended to use `"stream": false` 
in all requests.  Note that `"stream": true` is, however, the default!

The "tools" only work with the "chat" interface and with `"stream": false`.
During the plugfest I plan to explore tools to read and invoke Things described by
other TDs, interface with TDDs, etc.  Stay tuned.

As noted above, please do not use the llama3.1:405b model,
my machine "only" has 128GB of DRAM and consumer-class GPUs with limited VRAM.

Recommended models (these all support tools):
   - `llama3.1:70b` - Relatively slow (a few minutes for a paragraph), but
     a better choice if you want "reasoning", e.g. for the planning part
     of an agent.
   - `llama3.1` - For general commands.  Does have tool support.  Fast (7B parameters).
   - `llama3.2` - For general commands; an improved, smaller version of the above.  Has tool
     support.  Fast and small (3B parameters).
   - `llama3.2:1b` - Even smaller version of the above with 1B parameters.  Very fast.
     Suitable for simple commands.
   - `llama3.2-vision` - For general commands and image understanding.  Fast, but larger
     than the basic llama3.2 model (11B parameters).  Images need to be
     [encoded in base 64](https://stackabuse.com/bytes/converting-images-and-image-urls-to-base64-in-node-js/).
   - `llama3.2-vision:90b` - A larger, more powerful version of the above.  If you need both
     planning and image understanding.  Slow and big (90B parameters).  Largest model feasible to run on this machine.
     Don't use unless you actually plan to use the vision features.

Larger models may also take a significant time to "load" upon first use (reading 55GB into memory takes time,
even though I have a RAID drive...).

If you want you can try some of the other models mentioned in the ollama documentation.
I've downloaded most of the interesting ones listed under the [model library examples](https://github.com/ollama/ollama/tree/main?tab=readme-ov-file#model-library) in the documentation.
However, I will only be testing tools and image understanding with the above models.
See the [full model library](https://ollama.com/library) and let me know if you want to try a specific model.

Use the following to test access from the VPN (static IP will be used for this service):
```sh
curl http://192.168.30.138:11434/api/generate -d '{"model": "llama3.2", "prompt": "Why is the sky blue?", "stream": false}'
```
This static IP is on the VPN.  You may have to replace the above IP with the appropriate values if you
are using a "bridge".   If there is a need I can see about making the above service available
on the internet directly (through an ssh tunnel with access controls, etc).

This service is NOT self-describing, e.g. `.well-known/wot` will not return the TD.
Here I am using a WoT TD to describe an existing service that was not designed with
knowledge of WoT.

## Piper Text-to-Speech
This is running the [Piper](https://github.com/rhasspy/piper) text to speech system with the simple web interface
given in [src/python_run/piper/http_server.py](https://github.com/rhasspy/piper/blob/master/src/python_run/piper/http_server.py).
The POST API endpoint for this simply takes raw text as input (not even in JSON, just "text/plain") and returns data that can be interpreted as a WAV
file.  For example, you can invoke it from the command line with
```sh
curl -X POST -H 'Content-Type: text/plain' --data 'This is a test.' -o test.wav '192.168.30.138:5050'
```
On Linux, you can then play the audio file with `aplay test.wav` for example (assuming you have set up default
audio devices, etc).

You can also use a GET interface, which encodes the inputs into the URL instead of in the body of a
POST request as above:
```sh
curl -G --data-urlencode 'text=This is a test.' -o test.wav '192.168.30.138:5050'
```

NOTE 1: the above IP is the one given my server from DHCP and might change.  In particular, if I get static IP
assignment working I will change it to 192.168.30.11.

NOTE 2: Not yet working over the VPN for some unknown reason.  But the network was generally misbehaving
when I was trying to test it.

NOTE 3: The above simple web service does not set the correct ContentType for the response, using
`text/html` (the default) when it is in fact returning binary data.  The following line in the original
code,
```python
    return wav_io.getvalue()
```
should be changed to 
```python
    return wav_io.getvalue(), 200, {'Content-Type': 'audio/wav'}
```
to fix this.  With this change the input URL (which can even embed the text to be converted) can be used
directly in a web browser to play the audio.  The TD corresponds to this modified server.  For instance,
try clicking on the following link...

[http://192.168.30.138:5050/?text=Welcome+to+the+W3C+plugfest!](http://192.168.30.138:5050/?text=Welcome+to+the+W3C+plugfest!)

## Whisper ASR Server
An instance of the [faster-whisper-server](https://github.com/fedirz/faster-whisper-server) is run on port 5052.
This provides transcription of audio uploaded from a WAV file, however note the input ContentType is 
multipart/form so you can't just blast the binary data in the body of a POST.  Here is a curl command to exercise it
(you can generate a suitable test file with the Piper service, above):
```sh
curl http://localhost:5052/v1/audio/transcriptions -F "file=@test.wav" -F "language=en" 
```
You can leave off the language tag but it is faster with it (otherwise it has to do language identification first).
Other langauges may also work, e.g. "de", but I have not tested.  It is using the `Systran/faster-whisper-small` model.

Output is JSON.  

NOTE 1: There may be other things in the JSON as well but for now the TD only includes the "text" field.
