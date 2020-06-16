var mqtt = require('mqtt')

var client = mqtt.connect('mqtts://mqtt.motius.io', {
  port: 8883,
  username: 'USERNAME', // ToDo: replace
  password: 'PASSWORD' // ToDo: replace
})

client.on('connect', function () {
  console.log("Connected")
  client.subscribe('things/tds') // TDs are published here
  client.publish('things/discover', 'true') // Tell things that you want to discove them
})

client.on('message', function (topic, message) {
  if (topic === 'things/tds') 
    console.log("Received new Thing")
    console.dir(JSON.parse(message.toString()), {depth: null}) // Pretty print nested JSON objects 
})

client.on('error', function (error) {
  console.log(error) 
})