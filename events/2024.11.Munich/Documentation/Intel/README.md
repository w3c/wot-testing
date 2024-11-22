# AI Services
Provided remotely by Intel.
See [TDs](../../TDs/Intel/README.md).

## Ollama LLM Server
This is running an LLM interference engine that can run a number of different
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

As noted above, please do not use the largest llama3.1:405b model,
my machine "only" has 128GB of RAM and consumer-class GPUs.

Recommended models (these all support tools):
   - llama3.1:70b - Relatively slow (a few minutes for a paragraph), but
     a better choice if you want "reasoning", e.g. for the planning part
     of an agent.
   - llama3.1 - For general commands.  Does have tool support.  Fast (7b parameters).
   - llama3.2 - For general commands; and improved version of the above.  Has both tool
     support and image understanding.  Fast (7b parameters).  Images need to be
     [encoded in base 64](https://stackabuse.com/bytes/converting-images-and-image-urls-to-base64-in-node-js/).
If you want you can try some of the other models mentioned in the ollama documentation.
I've downloaded most of the interesting ones already, e.g. phi3-mini, etc.  However, I
will only be testing tools etc. with the above models.

Use the following to test access from the VPN (static IP will be used for this service):
```sh
curl http://192.168.30.11:11434/api/generate -d '{"model": "llama3.2", "prompt": "Why is the sky blue?", "stream": false}'
```
This static IP is on the VPN.  You may have to replace the above IP with the appropriate values if you
are using a "bridge".   If there is a need I can see about making the above service available
on the internet directly (through an ssh tunnel with access controls, etc).

This service is NOT self-describing, e.g. `.well-known/wot` will not return the TD.
Here I am using a WoT TD to describe an existing service that was not designed with
knowledge of WoT.
