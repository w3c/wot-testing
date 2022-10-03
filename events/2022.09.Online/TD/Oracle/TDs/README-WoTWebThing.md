
# WotWebThing

The *WoTWebThing* is a profile compliant implementation of a pump.

It is a simplified model of a pump for liquids that provides several properties, actions and a Webhook event.

It contains several operation status indicators that are exposed via properties.
These properties can be read individually, or all properties can be read at once.

The *WoTWebThing* provides 3 operations:
- power
- diagnose
- resetFilter

The *WoTWebThing* provides a *filterClogged* event affordance, to which a consumer can subscribe/unsubscribe.

An event subscriber registers the endpoint of a HTTP server that receives event notifications upon subscription.

## Authentication

The *WoTWebThing* requires basic authentication in the HTTP authentication header, as illustrated in the curl examples below.

## Properties

The following properties are defined:

```
meaning
Cycle_Peak_Operation_Percent_Of_Minute
Cycle_Cases_Pressure_Max
Cycle_Cases_Pressure_Min
Cycle_Return_Pressure_Max
Cycle_Maximum_Inlet_Pressure
```

### reading a single property
```
% curl w3cwotprofile.ddns.net:24024/properties/meaning -u "w3cwotprofile:eliforp"
{"meaning": 42}
```

### Setting a property

```
% curl -X PUT w3cwotprofile.ddns.net:24024/properties/meaning -u "w3cwotprofile:eliforp" -d "{ value : \"41\" }"
```


### reading all properties

```
% curl w3cwotprofile.ddns.net:24024/properties -u "w3cwotprofile:eliforp" 
{
  "Cycle_Return_Pressure_Min": 1.3913971190868986,
  "Cycle_Maximum_Inlet_Pressure": 301.42182499556196,
  "meaning": 42,
  "Cycle_Peak_Operation_Percent_Of_Minute": 1.5436025961821986,
  "Cycle_Cases_Pressure_Max": 3,
  "Cycle_Cases_Pressure_Min": 0,
  "Cycle_Return_Pressure_Max": 18.77156927455416
}
```

## Actions

The operation *power* is a synchronous operation which returns an immediate status response.

The *diagnose* operation models an asynchronous operation. When invoked it returns an *ActionStatus* response, which can be used for querying the status of the action. The duration of the action is between 30-60s.

### Synchronous actions
```
curl -v w3cwotprofile.ddns.net:24024/actions/power -u "w3cwotprofile:eliforp" -d "{value: true}"  
```

The following action *always* returns *forbidden* for testing purposes:
```
curl -v w3cwotprofile.ddns.net:24024/actions/resetFilter -u "w3cwotprofile:eliforp" -d "{value: true}"   
-> forbidden
``` 

### Asynchronous actions

To invoke an asynchronous action:
```
curl -v -X POST w3cwotprofile.ddns.net:24024/actions/diagnose -u "w3cwotprofile:eliforp"
```

Response is an ActionStatus object:
```
{
  "timeRequested": "2022-05-31T13:31:26.895516",
  "href": "actions/diagnose/b7968ef8-9e7c-4230-bbca-85be13f35efd",
  "status": "running"
}
```

Querying the state of an asynchronous action:
```
% curl -X GET w3cwotprofile.ddns.net:24024/actions/diagnose/40578eed-7b88-4fdb-9f72-90314f924d4a -u "w3cwotprofile:eliforp"

{
  "timeRequested": "2022-05-30T18:16:45.169514",
  "href": "actions/diagnose/40578eed-7b88-4fdb-9f72-90314f924d4a",
  "status": "running"
}
```

After the action has ended:

```
% curl -X GET w3cwotprofile.ddns.net:24024/actions/diagnose/40578eed-7b88-4fdb-9f72-90314f924d4a -u "w3cwotprofile:eliforp"

{
  "timeEnded": "2022-05-30T18:17:37.297650",
  "timeRequested": "2022-05-30T18:16:45.169514",
  "href": "actions/diagnose/40578eed-7b88-4fdb-9f72-90314f924d4a",
  "status": "completed"
}
```

## Events

### Event subscription:
```
curl -v -X POST w3cwotprofile.ddns.net:24024/events/filterClogged -u "w3cwotprofile:eliforp" -d "{callbackURL : \"http://130.35.140.146:223\" }"

-> {"subscriptionID": 903305380}
```
#### Unsubscribe using callbackURL 
```
curl -v -X DELETE w3cwotprofile.ddns.net:24024/events/filterClogged -u "w3cwotprofile:eliforp" -d "{callbackURL : \"http://130.35.140.146:223\" }"
```
#### Unsubscribe using subscriptionId
```
curl -v -X DELETE w3cwotprofile.ddns.net:24024/events/filterClogged -u "w3cwotprofile:eliforp" -d "{"subscriptionID": \"904712663\"}" 

```
