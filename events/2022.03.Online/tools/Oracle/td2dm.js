// Author: Michael.Lagally@oracle.com
// Created: 19.3.2018
// Last modified: 21.2.2022

"use strict";

function decodeProperties(p) {
    console.log("decode: " + p + " " + p.type);
    if (p.type == "object") {
        for (var q in p.properties) {
            if (verbose) console.log("***** object with #elements:"+td.properties[p].properties[q]);
            var prop={};
            prop.name=p+"_"+q;
            var iac=p.properties[q];
            prop.description=p.title+" "+q;         
            if (!iac.type) 
                iac.type = "object";
            prop.type=iac.type.toUpperCase();
            if (iac.minimum != iac.maximum) {
                prop.range=iac.minimum+","+iac.maximum;
            }
            prop.writable=td.properties[p].writable;
        }
    }
    else if (p.type == "array") {
        if (verbose) console.log("***** array with #elements:"+p.items.length);
        for (var i=0; i<p.items.length; i++) {
            if (verbose) console.log(p);
            var prop={};
            prop.name=p+"_"+i;
            var iac=p.items[i];
            prop.description=p.title+" "+i;
            prop.type=iac.type.toUpperCase();
            if (iac.minimum != iac.maximum) {
                prop.range=iac.minimum+","+iac.maximum;
            }
            prop.writable=td.properties[p].writable;
        }
    } else {
        var prop={};
        prop.name=p;
        var iac=td.properties[p];
        prop.description=iac.title;
 
        if (iac.properties) {
            if (iac.properties.type){
                prop.type=iac.properties.type.toUpperCase();
            } else {
                prop.type=iac.type;
            }
            if (iac.properties.minimum != iac.properties.maximum) {
                prop.range=iac.properties.minimum+","+iac.properties.maximum;
            }
        } else {
            if (iac.type) {
                if (iac.type == "array") {
                    // TODO: complete ARRAY implementation
                    prop.type="STRING";
                } else {
                    prop.type=iac.type.toUpperCase();
                }
            }
        }
        prop.writable=iac.writable;
    }
    return prop;
}

var fs = require("fs");
var path = require("path");
var baseDir = ".";

//console.log(`td-dm started`);

if (process.argv.length<3) {
	   console.log ("Usage: node td2dm.js <thingDescr.jsonld> [-v]");
	   console.log ("Example: node td2dm.js TDs/Festo_Plant.jsonld");
	   process.exit (-1);
	}


var filename=process.argv[2];

var verbose=process.argv[3] ==="-v";

var content=fs.readFileSync('./'+filename);
var path=filename.substring(0, filename.lastIndexOf("/"));
// get package directory name
var pkg=path.substring(path.lastIndexOf("/")+1);
pkg = "oracle";
// strip path and extension
var plainfn=path.substring(filename.lastIndexOf("/")+1, filename.lastIndexOf("."));

var td=JSON.parse(content);
if (verbose) console.log(td);

if (verbose) console.log("-----");

var dm={};
dm.name=td.title;
dm.description=td.base;
dm.urn="urn:com:"+pkg+":"+td.title;

var now=new Date(Date.now());
dm.createdAsString=now.toISOString();
dm.created=now.valueOf();
dm.lastModifiedAsString=now.toISOString();
dm.lastModified=now.valueOf();
dm.userLastModified="auto-generated by td2dm converter";
dm.attributes=[];
dm.actions=[];
dm.events=[];
//dm.formats=[];
//dm.links=[];

for (var p in td.properties) {
    if (verbose) console.log(p);
    dm.attributes.push(decodeProperties(p));
}

if (verbose) console.log("--- done properties --");

// TODO: Add parameter handling of actions
for (var a in td.actions) {
    if (verbose) console.log(iac);
    var act={};
    act.name=a;
    var iac=td.actions[a];
    if (iac.label) {
        act.description=iac.label;
    } else {
        act.description=iac.title;
    };

    dm.actions.push(act);
    if (verbose) console.log(act);
}

if (verbose) console.log("-----");

for (var e in td.events) {
    if (verbose) console.log(iac);
    var evt={};
    var iac=td.events[e];
    evt.name=e;
    evt.description=iac.description;
    if (verbose) console.log(evt);
    dm.events.push(evt);
}
if (verbose) console.log("-----");

console.log(JSON.stringify(dm, null, "\t"));

