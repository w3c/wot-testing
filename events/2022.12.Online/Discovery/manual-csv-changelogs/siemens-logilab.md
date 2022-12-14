
# CSV Changelog - 14/12/2022

[Old CSV Path](../../../../data/input_2022/Discovery/siemens-logilab/manual.csv)  
[New CSV Path](../../../../../wot-discovery/testing/manual.csv)


## ADDED

- `exploration-server-coap-alternate-content` was added
- `exploration-server-coap-method` was added
- `exploration-server-coap-resp` was added
- `exploration-server-coap-size2` was added
- `exploration-server-http-resp-content-type` was added
- `exploration-server-http-resp-json` was added
- `introduction-dns-sd-service-name-directory-udp` was added
- `introduction-dns-sd-service-name-udp` was added
- `priv-loc-gen-ids` was added
- `priv-loc-priv-dir-access` was added
- `tdd-context-injection` was added
- `tdd-http-alternate-language` was added
- `tdd-http-error-response-lang` was added
- `tdd-http-error-response-utf-8` was added
- `tdd-http-representation-alternate-output` was added
- `tdd-http-unsupported-feature` was added
- `tdd-things-create-anonymous-id` was added
- `tdd-things-create-known-contenttype` was added
- `tdd-things-update-contenttype` was added
- `tdd-things-list-pagination-order-utf-8` was added
- `tdd-things-list-pagination-orderable` was added
- `tdd-things-representation-alternate-input` was added
- `tdd-things-retrieve-resp-content-type` was added
- `tdd-things-list-resp-content-type` was added
- `tdd-validation-response-lang` was added
- `tdd-validation-response-utf-8` was added


## REMOVED

- `priv-loc-gen-ids-1` was removed
- `priv-loc-gen-ids-2` was removed
- `exploration-server-http-access-control` was removed
- `exploration-server-http-secure` was removed
- `tdd-http-missing-api-endpoint` was removed
- `tdd-https` was removed
- `tdd-notification-data-create-full` was removed
- `tdd-notification-data-delete-diff` was removed
- `tdd-notification-data-update-diff` was removed
- `tdd-notification-data-update-id` was removed
- `tdd-notification-filter-type` was removed
- `tdd-things-additional-representation` was removed


## LINE-CHANGE

- `exploration-server-http-alternate-content` was moved from Line55 to 22
- `exploration-server-http-alternate-language` was moved from Line56 to 23
- `exploration-server-http-head` was moved from Line57 to 24
- `exploration-server-http-method` was moved from Line58 to 25
- `exploration-server-http-resp` was moved from Line59 to 26
- `introduction-core-rd` was moved from Line18 to 29
- `introduction-core-rd-directory` was moved from Line19 to 30
- `introduction-core-rd-resource-type-directory` was moved from Line20 to 31
- `introduction-core-rd-resource-type-thing` was moved from Line21 to 32
- `introduction-did` was moved from Line22 to 33
- `introduction-did-service-endpoint` was moved from Line23 to 34
- `introduction-direct-directory-description` was moved from Line24 to 35
- `introduction-direct-thing-description` was moved from Line25 to 36
- `introduction-direct-url` was moved from Line26 to 37
- `introduction-dns-sd` was moved from Line27 to 38
- `introduction-dns-sd-service-name` was moved from Line28 to 39
- `introduction-dns-sd-service-name-directory` was moved from Line29 to 40
- `introduction-dns-sd-txt-record` was moved from Line30 to 43
- `introduction-well-known-path` was moved from Line31 to 44
- `introduction-well-known-thing-description` was moved from Line32 to 45
- `introduction-well-known-uri` was moved from Line33 to 46
- `priv-loc-anonymous-tds` was moved from Line34 to 47
- `priv-loc-disable-public-directories` was moved from Line35 to 48
- `priv-loc-explicit-care` was moved from Line36 to 49
- `priv-loc-explicit-strip` was moved from Line37 to 50
- `priv-query-anon` was moved from Line40 to 53
- `sec-self-proxy` was moved from Line41 to 54
- `sec-self-psk` was moved from Line42 to 55
- `sec-self-segment` was moved from Line43 to 56
- `sec-tdd-intro-if-multicast-required` was moved from Line44 to 57
- `sec-tdd-intro-limit-response-size` was moved from Line45 to 58
- `sec-tdd-intro-no-ext` was moved from Line46 to 59
- `sec-tdd-intro-no-multicast` was moved from Line47 to 60
- `sec-tdd-intro-no-observe` was moved from Line48 to 61
- `sec-tdd-intro-throttling` was moved from Line49 to 62
- `sec-tdd-limit-query-complexity` was moved from Line50 to 63
- `sec-tdd-query-watchdog` was moved from Line51 to 64
- `sec-tdd-throttle-queries` was moved from Line52 to 65
- `security-bootstrapping-endpoints` was moved from Line53 to 66
- `tdd-registrationinfo-expiry-config` was moved from Line68 to 73
- `tdd-registrationinfo-expiry-purge` was moved from Line69 to 74
- `tdd-registrationinfo-vocab-expires` was moved from Line70 to 75
- `tdd-registrationinfo-vocab-retrieved` was moved from Line71 to 76
- `tdd-registrationinfo-vocab-ttl` was moved from Line72 to 77
- `tdd-search-large-tdds` was moved from Line73 to 78
- `tdd-search-sparql-error` was moved from Line74 to 79
- `tdd-search-sparql-federation-version` was moved from Line75 to 80
- `tdd-search-sparql-resp-describe-construct` was moved from Line76 to 81
- `tdd-search-sparql-version` was moved from Line77 to 82
- `tdd-things-list-pagination` was moved from Line79 to 86
- `tdd-things-list-pagination-collection` was moved from Line80 to 87
- `tdd-things-list-pagination-header-canonicallink` was moved from Line81 to 88
- `tdd-things-list-pagination-header-nextlink` was moved from Line82 to 89
- `tdd-things-list-pagination-header-nextlink-attr` was moved from Line83 to 90
- `tdd-things-list-pagination-header-nextlink-base` was moved from Line84 to 91
- `tdd-things-list-pagination-limit` was moved from Line85 to 92
- `tdd-things-list-pagination-order` was moved from Line86 to 93
- `tdd-things-list-pagination-order-default` was moved from Line87 to 94
- `tdd-things-list-pagination-order-nextlink` was moved from Line88 to 95
- `tdd-things-list-pagination-order-unsupported` was moved from Line89 to 96
- `tdd-things-read-only-auth` was moved from Line90 to 99
- `tdd-validation-jsonschema` was moved from Line91 to 103

