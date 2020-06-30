This directory contains scripts to periodically sync TDs of wot-testing events with an instance of [LinkSmart Thing Directory](../../prototypes/linksmart.md).

## Python Script
The Python script recursively looks for `.jsonld` files and submits them to the directory. If the submission fails with Bad Request status, the script makes another query for explicit validation of the TD (GET `/validation`) and prints the results.

It uses the TD's `id` as the resource id during registration and follow-up updates (PUT `/td/{id}`). TDs that have no `id` are always created as a new resource using a POST request (POST `/td`) which responds with a system-generated ID in response Location header. For updates on TDs without `id`, an overlapping registration will exist in the directory until it gets purged some time after the validity period set as TTL.

#### Run
Dependencies: Python 3, `requests`
Pass arguments as environment variables:
```bash
ENDPOINT=http://localhost:8081 AUTHORIZATION="<basic/bearer>" TTL=60 python sync.py
```
where:
* `ENDPOINT` is the directory root endpoint
* `AUTHORIZATION` is the authorization header
* `TTL` is the ttl value injected inside the TD, to indicate the lifetime of TD in seconds inside the directory

## Github Actions
An example Github Actions workflow to sync periodically is available in [2020.06.Online.yml](2020.06.Online.yml)

The Github Actions workflow is live [here](https://github.com/farshidtz/wot-testing-directory-sync/actions)
