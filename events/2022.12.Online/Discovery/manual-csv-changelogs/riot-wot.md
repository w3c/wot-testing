
# CSV Changelog - 14/12/2022

[Old CSV Path](../../../../data/input_2022/Discovery/riot-wot/manual.csv)  
[New CSV Path](../../../../../wot-discovery/testing/manual.csv)


## ADDED

- `exploration-secboot-401` was added
- `exploration-secboot-auth` was added
- `exploration-secboot-oauth2-flows` was added
- `exploration-server-http-alternate-content` was added
- `exploration-server-http-alternate-language` was added
- `exploration-server-http-head` was added
- `exploration-server-http-method` was added
- `exploration-server-http-resp` was added
- `exploration-server-http-resp-content-type` was added
- `exploration-server-http-resp-json` was added
- `introduction-dns-sd-service-name-directory-udp` was added
- `introduction-dns-sd-service-name-udp` was added
- `priv-loc-anonymous-tds` was added
- `priv-loc-disable-public-directories` was added
- `priv-loc-explicit-care` was added
- `priv-loc-explicit-strip` was added
- `priv-loc-gen-ids` was added
- `priv-loc-priv-dir-access` was added
- `priv-query-anon` was added
- `sec-self-proxy` was added
- `sec-self-psk` was added
- `sec-self-segment` was added
- `sec-tdd-intro-if-multicast-required` was added
- `sec-tdd-intro-no-ext` was added
- `sec-tdd-intro-no-multicast` was added
- `sec-tdd-intro-throttling` was added
- `sec-tdd-limit-query-complexity` was added
- `sec-tdd-query-watchdog` was added
- `sec-tdd-throttle-queries` was added
- `security-bootstrapping-endpoints` was added
- `tdd-context-injection` was added
- `tdd-http-alternate-language` was added
- `tdd-http-error-response-lang` was added
- `tdd-http-error-response-utf-8` was added
- `tdd-http-representation-alternate-output` was added
- `tdd-http-unsupported-feature` was added
- `tdd-things-create-anonymous-id` was added
- `tdd-things-list-pagination-order-utf-8` was added
- `tdd-things-list-pagination-orderable` was added
- `tdd-things-representation-alternate-input` was added
- `tdd-things-retrieve-resp-content-type` was added
- `tdd-things-list-resp-content-type` was added
- `tdd-validation-response-lang` was added
- `tdd-validation-response-utf-8` was added


## REMOVED

- `self-http-access-control` was removed
- `self-http-alternate-content` was removed
- `self-http-head` was removed
- `self-http-method` was removed
- `self-http-resp` was removed
- `self-http-secure` was removed
- `tdd-anonymous-td-identifier` was removed
- `tdd-anonymous-td-local-uuid` was removed
- `tdd-http-error-response` was removed
- `tdd-http-head` was removed
- `tdd-http-missing-api-endpoint` was removed
- `tdd-https` was removed
- `tdd-notification` was removed
- `tdd-notification-data` was removed
- `tdd-notification-data-create-full` was removed
- `tdd-notification-data-delete-diff` was removed
- `tdd-notification-data-diff-unsupported` was removed
- `tdd-notification-data-td-id` was removed
- `tdd-notification-data-update-diff` was removed
- `tdd-notification-data-update-id` was removed
- `tdd-notification-event-id` was removed
- `tdd-notification-event-types` was removed
- `tdd-notification-filter-type` was removed
- `tdd-notification-sse` was removed
- `tdd-registrationinfo-vocab-created` was removed
- `tdd-registrationinfo-vocab-modified` was removed
- `tdd-search-sparql` was removed
- `tdd-search-sparql-federation` was removed
- `tdd-search-sparql-method-get` was removed
- `tdd-search-sparql-method-post` was removed
- `tdd-search-sparql-resp-select-ask` was removed
- `tdd-things-additional-representation` was removed
- `tdd-things-create-anonymous-contenttype` was removed
- `tdd-things-create-anonymous-td` was removed
- `tdd-things-create-anonymous-td-resp` was removed
- `tdd-things-create-known-td` was removed
- `tdd-things-create-known-td-resp` was removed
- `tdd-things-create-known-vs-anonymous` was removed
- `tdd-things-crud` was removed
- `tdd-things-crudl` was removed
- `tdd-things-default-representation` was removed
- `tdd-things-delete` was removed
- `tdd-things-delete-resp` was removed
- `tdd-things-list-method` was removed
- `tdd-things-list-only` was removed
- `tdd-things-list-resp` was removed
- `tdd-things-retrieve` was removed
- `tdd-things-retrieve-resp` was removed
- `tdd-things-update` was removed
- `tdd-things-update-partial` was removed
- `tdd-things-update-partial-contenttype` was removed
- `tdd-things-update-partial-mergepatch` was removed
- `tdd-things-update-partial-partialtd` was removed
- `tdd-things-update-partial-resp` was removed
- `tdd-things-update-resp` was removed
- `tdd-validation-response` was removed
- `tdd-validation-result` was removed
- `tdd-validation-syntactic` was removed


## LINE-CHANGE

- `exploration-server-coap-alternate-content` was moved from Line15 to 18
- `exploration-server-coap-method` was moved from Line16 to 19
- `exploration-server-coap-resp` was moved from Line17 to 20
- `exploration-server-coap-size2` was moved from Line18 to 21
- `introduction-core-rd` was moved from Line21 to 29
- `introduction-core-rd-directory` was moved from Line22 to 30
- `introduction-core-rd-resource-type-directory` was moved from Line23 to 31
- `introduction-core-rd-resource-type-thing` was moved from Line24 to 32
- `introduction-did` was moved from Line25 to 33
- `introduction-did-service-endpoint` was moved from Line26 to 34
- `introduction-direct-directory-description` was moved from Line27 to 35
- `introduction-direct-thing-description` was moved from Line28 to 36
- `introduction-direct-url` was moved from Line29 to 37
- `introduction-dns-sd` was moved from Line30 to 38
- `introduction-dns-sd-service-name` was moved from Line31 to 39
- `introduction-dns-sd-service-name-directory` was moved from Line32 to 40
- `introduction-dns-sd-txt-record` was moved from Line33 to 43
- `introduction-well-known-path` was moved from Line34 to 44
- `introduction-well-known-thing-description` was moved from Line35 to 45
- `introduction-well-known-uri` was moved from Line36 to 46
- `sec-tdd-intro-limit-response-size` was moved from Line20 to 58
- `sec-tdd-intro-no-observe` was moved from Line19 to 61
- `tdd-registrationinfo-expiry-config` was moved from Line61 to 73
- `tdd-registrationinfo-expiry-purge` was moved from Line62 to 74
- `tdd-registrationinfo-vocab-expires` was moved from Line64 to 75
- `tdd-registrationinfo-vocab-retrieved` was moved from Line66 to 76
- `tdd-registrationinfo-vocab-ttl` was moved from Line67 to 77
- `tdd-search-large-tdds` was moved from Line68 to 78
- `tdd-search-sparql-error` was moved from Line70 to 79
- `tdd-search-sparql-federation-version` was moved from Line72 to 80
- `tdd-search-sparql-resp-describe-construct` was moved from Line75 to 81
- `tdd-search-sparql-version` was moved from Line77 to 82
- `tdd-things-create-known-contenttype` was moved from Line82 to 84
- `tdd-things-update-contenttype` was moved from Line109 to 85
- `tdd-things-list-pagination` was moved from Line93 to 86
- `tdd-things-list-pagination-collection` was moved from Line94 to 87
- `tdd-things-list-pagination-header-canonicallink` was moved from Line95 to 88
- `tdd-things-list-pagination-header-nextlink` was moved from Line96 to 89
- `tdd-things-list-pagination-header-nextlink-attr` was moved from Line97 to 90
- `tdd-things-list-pagination-header-nextlink-base` was moved from Line98 to 91
- `tdd-things-list-pagination-limit` was moved from Line99 to 92
- `tdd-things-list-pagination-order` was moved from Line100 to 93
- `tdd-things-list-pagination-order-default` was moved from Line101 to 94
- `tdd-things-list-pagination-order-nextlink` was moved from Line102 to 95
- `tdd-things-list-pagination-order-unsupported` was moved from Line103 to 96
- `tdd-things-read-only-auth` was moved from Line105 to 99
- `tdd-validation-jsonschema` was moved from Line116 to 103

