# SDF Conversion

## Description
Add SDF models from the [oneDM playground](https://github.com/one-data-model/playground) to the plugfest directory which have been converted to TMs using my [sdf-wot-converter](https://github.com/JKRhb/sdf-wot-converter-py). For reducing redundancy, the models were added as a submodule pointing to a [separate repository](https://github.com/JKRhb/onedm-playground-wot-tm)

## Participants

* Jan Romann (@JKRhb)
* Michael McCool (@mmcool)

## Discussion

* would be useful to have a link back to the source data (a general issue when one thing is generated from another) and also to name the corresponding sdf model
* not clear how exactly to map sdfObjects to TM modularity; currently flattening
* accelerometer is a possible candidate for a geolocator; can it be annotated with the proposed geolocation ontology?
* some issues as well with vector values being provided component by component.  Are these measured at the same time, or different time?  Are they registered, and if so, should there be an action to trigger a "reading"?
* schemas that can group elements of a vector (or label them) would be useful

## Related Documents and Links

* [Related PR](https://github.com/w3c/wot-testing/pull/177)
