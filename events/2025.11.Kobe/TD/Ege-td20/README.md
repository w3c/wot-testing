# README

In this folder I have taken TDs from plugfest and another TM from Siemens at <https://github.com/wot-oss/thingmodels/blob/main/siemens/siemens/3nacom-fuse/v1.0.0-20240802121832-3b18ae135fbc.tm.json>.

The goal is to create compact versions of the TDs following g-description/tree/main/proposals/common-definitions assuming https://github.com/w3c/wot-thing-description/pull/2163 is merged.

In the linked PR, you can see the first commit adding the TDs and the second one adapting them to see a good difference.

## Findings

- The filesize gains in this set of TDs is minimal. Exception with Siemens TM -> 48 kB to 40 kB
- The Echonet `airconditioner` was the most challenging with 5 different IP addresses.
