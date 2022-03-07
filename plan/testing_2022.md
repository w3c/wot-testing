# WoT Testing Plan - 2022
Covers normative specifications TD 1.1, Architecture 1.1, Profile 1.0, Discovery 1.0.
Includes both data validation, functional/behavioral testing, and security testing.
Plans are given below for each deliverable, and will be included in
the implementation reports for each deliverable.

## Data Validation

### TD 1.1
### Architecture 1.1
### Profile 1.0
### Discovery 1.0

## Functional/Behavioral Testing

### TD 1.1
### Architecture 1.1
### Profile 1.0
### Discovery 1.0

## Security Testing

### TD 1.1
Things that use HTTP can be targetted as if they were web services.
Note that HTML is not generally returned so tools that test web sites will not work, 
but may be worth investigating:
* Arachni
* Nikto
* SQLin
* Gauntlt (wraps up several of these in a Docker framework)
There are also tools specific to WoT, e.g. for fuzz testing
* WoT Testbench (TUM)
* WADE (for fuzzing)
There are tools to test OpenAPI so if we converted TDs to OpenAPI we may be able to use those:
* https://swagger.io/solutions/api-testing/
General tools for testing authentication implementations might also be useful:
OAuth2, password guessing.

Can focus on finding weaknesses rather than full vulnerabilities.
Should start with tools that are known to work on Things, e.g. WoT Testbench.

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
