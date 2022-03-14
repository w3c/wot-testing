# WoT Testing Plan - 2022

Covers normative specifications TD 1.1, Architecture 1.1, Profile 1.0, Discovery 1.0.
Includes syntactic testing, functional/behavioral testing, and security testing.
Plans are given below for each deliverable and will be included in
the implementation reports for each deliverable.

## Syntactic Testing

This type of testing involves checking documents (such as TDs) against the corresponding specification through programs/scripts. 
This type of testing does not involve interaction with devices or services and is considered safe.

### TD 1.1

* [Playground](https://github.com/thingweb/thingweb-playground): Playground can check TDs against JSON Schemas and can also do additional validation via small scripts. All the assertions in the TD spec that can be automatically tested can be tested with playground.

### Architecture 1.1
### Profile 1.0
### Discovery 1.0
* The only syntactic testing required is for the format of "enriched" data in TDs stored in TDDs, which can be
  done with JSON Schema.  Testing will involve capturing enriched TDs from a TDD and validating it against a schema.
  The "capturing" part itself is a form of behavioral test.

## Functional/Behavioral Testing

This type of testing involves checking the behavior of a service or Thing in order to verify that it is working as intended.
This can be reading properties in TDs or registering TDs for directories.
This type of testing **does** involve interaction with devices or services and is **not** considered safe.

### TD 1.1

* [WoT Testbench](https://github.com/tum-esi/testbench) (TUM): It can do fuzz testing based on a TD. It is based on node-wot and can do all types of operations of the TD 1.0 spec other than the meta operations and `uriVariables`
* [WADE](https://github.com/tum-esi/wade) (TUM): It can be used for basic checks with a UI that generates interaction buttons based on a TD
* [Open API Generator of the TD Playground](https://github.com/thingweb/thingweb-playground/tree/master/packages/td_to_openAPI): In order to use tools that use OpenAPI documents, such as Postman, Playground can generate an Open API document from a TD that uses HTTP. It should be considered experimental.
### Architecture 1.1
### Profile 1.0
### Discovery 1.0
* Testing tool available; example results: https://github.com/farshidtz/wot-discovery-testing/blob/main/directory/example/report.csv
* Needs to be updated to current specification (Farshid)
* Still needs tests for SPARQL (Andrea Cimmino)
* Will be some manual assertions.

## Security Testing

This type of testing involves checking the behavior of a service or Thing in order to verify that it supports the security mechanisms 
and uses best practices.
This can be reading properties in TDs or registering TDs for directories that are protected with security mechanisms or this can be injecting
invalid values in form of payloads/headers.
This type of testing **does** involve interaction with devices or services and is **not** considered safe.

### TD 1.1
Things that use HTTP can be targeted as if they were web services.
Note that HTML is not generally returned so tools that test websites will not work, 
but may be worth investigating:
* Arachni
* Nikto
* SQLin
* Gauntlt (wraps up several of these in a Docker framework)
There are also tools specific to WoT, e.g. for fuzz testing
* [WoT Testbench](https://github.com/tum-esi/testbench) (TUM): It can do HTTP testing based on a TD for Basic Auth and OAuth2. It does basic dictionary attacks. More info can be found [here](https://github.com/tum-esi/testbench/blob/f5e5beb502792088b9856892bcbd88f2df0e0e8b/src/Tester.ts#L886)
* [WADE](https://github.com/tum-esi/wade) (TUM): It can be used for basic checks with a UI that generates interaction buttons based on a TD
There are tools to test OpenAPI so if we converted TDs to OpenAPI we may be able to use those:
* https://swagger.io/solutions/api-testing/
General tools for testing authentication implementations might also be useful:
OAuth2, password guessing.
* [Open API Generator of the TD Playground](https://github.com/thingweb/thingweb-playground/tree/master/packages/td_to_openAPI): In order to use tools that use OpenAPI documents, such as Postman, Playground can generate an Open API document from a TD that uses HTTP. It should be considered experimental.

Can focus on finding weaknesses rather than full vulnerabilities.
Should start with tools that are known to work on WoT Things, e.g. WoT Testbench.

### Architecture 1.1

### Profile 1.0

### Discovery 1.0
#### TD Directory Service
Is a web service, should be tested as any other web service.
Will be testing the actual implementations.
It also has a TD and is a Thing, so tools for generally testing Things should work.
May want to write additional tests for JSONPath and SPARQL injection attacks.

### Self-Description
Use of .well-known etc. adds an additional entry point to the API.
Assuming we have tools that can use a TD as a starting point, we can
add this entry point to the TD temporarily and then use that toolchain.
