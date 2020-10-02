# Node-RED/nodegen autopopulation server (mDNS version)

## Description

We provide an autopopulation server in the plugfest VPN.
If you have Node-RED instance, you can use this server as catalogue server for your Node-RED editor.

## How to use

- Write following configuration to your Node-RED settings (e.g. `~/.node-red/settings.js`)
```
module.exports = {
    ...
    editorTheme: {
        ...
        palette: {
            editable: true,
            catalogues: [
                'http://ktorpi.local:8080/catalogue.json'
            ] 
        }
    }
}
```

- Restart your Node-RED instance
- Go to palette manager in Node-RED editor (Menu button > Manage palette > Install)
- Push refresh button and input some search string, then you can see Things in plugfest VPN that self-host and advertise their Thing Description.
- push install button.  If install is completed, you can see the Thing's node in Web of Things category of palette.
  - There is no need to restart your Node-RED instance.
- When new things are connected to plugfest network, the autopopulation server automatically fetch their TD and generate node modules. 

## Limitation
- Authentication is not supported.  If the self-hosted TD is protected by authentication, the server just ignores it.
- Because of limited computation resource, node generation takes a few minutes.

## Slides
- [Slides(pptx)](./2020-10-01-nodered-mdns.pptx) (contains a video)
- [Slide(pdf)](./2020-10-01-nodered-mdns.pdf)

