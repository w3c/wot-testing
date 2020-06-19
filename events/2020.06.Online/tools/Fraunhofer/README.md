This directory contains Python script to sync TDs with an instance of [LinkSmart Thing Directory](../../prototypes/linksmart.md).

The script recursively looks for `.jsonld` files and submits them to the directory. If the submission fails with Bad Request status, the script makes another query for explicit validation of the TD and prints the results.

# Run
Dependencies: Python 3, `requests`
Pass arguments as environment variables:
```bash
ENDPOINT=http://localhost:8081 AUTHORIZATION="<basic/bearer>" TTL=60 python sync.py
```
where:
* `ENDPOINT` is the directory root endpoint
* `AUTHORIZATION` is the authorization header
* `TTL` is the ttl value injected inside the TD, to indicate the lifetime of TD in seconds inside the directory

An example Github Actions workflow to sync periodically is available in [2020.06.Online.yml](2020.06.Online.yml)
