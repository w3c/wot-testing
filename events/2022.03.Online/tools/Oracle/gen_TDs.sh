#!/bin/sh

IOTCS=oraclew3cwotplugfest-test.staging.iot.ocs.oraclecloud.com

# Blue Pump
node dm2td.js ../../TD/Oracle/DMs/Blue_Pump.json $IOTCS 0-AB 92270D3C-C086-4F08-AAAD-0B29870B1FEA > ../../TD/Oracle/TDs/Blue_Pump.jsonld

# HVAC
node dm2td.js ../../TD/Oracle/DMs/HVAC_device_model.json $IOTCS 0-AB A4F7AD5E-426D-47B6-BE16-414E47CEE9BE > ../../TD/Oracle/TDs/HVAC.jsonld

# Truck
# node dm2td.js ../../TDs/Oracle/DMs/ora_obd2_device_model.json $IOTCS 0-AB 1B70FB03-72AF-4BBA-A6D1-D5300A2F8552 > ../../TDs/Oracle/oracle-Truck_Shared.jsonld

# Festo
# node dm2td.js ../../TDs/Oracle/DMs/Festo.json $IOTCS 0-AB 290A9892-8400-4FA7-9874-5FE4DB12DE81 > ../../TDs/Oracle/oracle-Festo_Shared.jsonld

# LED
# node dm2td.js ../../TDs/Oracle/DMs/LED.json $IOTCS 0-AB B7988C38-E3AD-47B7-B89D-9A451BF3CFAB > ../../TDs/Oracle/oracle-LED_Siemens.jsonld

# Connected Car
# node dm2td.js ../../TDs/Oracle/DMs/Connected_Car.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB F846B3B1-1154-4721-8790-1586DC802366 > ../../TDs/Oracle/Connected_Car_Shared.jsonld

# Solar Panel
# node dm2td.js ../../TDs/Oracle/DMs/SolarPanel.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	113972C0-6CFC-4FBD-A586-87E7FFD385F1 > ../../TDs/Oracle/SolarPanel_Fujitsu.jsonld
