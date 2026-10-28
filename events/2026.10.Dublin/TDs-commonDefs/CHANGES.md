# TDs-commonDefs: Summary of Changes

This folder contains 41 Thing Descriptions adapted to use the [common-definitions proposal](https://github.com/w3c/wot-thing-description/tree/main/proposals/common-definitions) mechanisms: `formDefaults`, `formDefinitions`, and inline `security`.

## Changes Applied to All TDs

- **`@context`** updated to `https://www.w3.org/ns/wot-next/td`. Additional context entries (prefix mappings like `echonet`, `lorav`, `schema`, etc.) are preserved.
- **`formDefaults`** added to every TD with shared form properties, avoiding duplication in individual forms.
- **`security` inlined**: Root-level `security` and `securityDefinitions` removed. The security scheme object is placed directly in `formDefaults` or `formDefinitions` entries (e.g., `"security": {"scheme": "nosec"}`).
- **`base` moved**: No TD has a root-level `base`. It lives in `formDefaults` (inline) or `formDefinitions` entries (array format).

## Two `formDefaults` Patterns

### Array `formDefaults` with `formDefinitions` (16 TDs)

Used when a TD has both JSON and CBOR content types. Named entries in `formDefinitions` each carry `base`, `contentType`, `security`, and any shared form properties. `formDefaults` is an array of references: `["cbor", "json"]`.

Matrix multiplication applies: N form templates x 2 definitions = 2N actual forms at runtime. This halves the number of form templates in the TD since identical JSON/CBOR form pairs collapse into a single template.

Applies to: all 11 Echonet TDs, 5 Thingweb TDs (coap-calculator-content-negotiation, coap-clock, http-advanced-coffee-machine, http-data-schema, http-simple-coffee-machine).

### Inline `formDefaults` (25 TDs)

Used for single content type or mixed content types where matrix multiplication would be incorrect. `formDefaults` is a plain object with `base`, `contentType`, `security`, and shared form properties.

Applies to: all Microsoft, Siemens, Hitachi TDs, and remaining Thingweb TDs.
