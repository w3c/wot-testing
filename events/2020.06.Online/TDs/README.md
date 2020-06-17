# WoT Testing - June 2020 Online Plugfest 
## TDs

Please use `.jsonld` as the file suffix for TDs.
Automatic validation will be set up but all other file suffixes (including `.td` and `.json` files) will be ignored.
The validator will also look into subdirectories but only one level down.
TDs should use a naming convention of `org-name.jsonld` as well, for example, `intel-camera.jsonld`.
This will help avoid accidental name conflicts.  The same name, without the `.jsonld` suffix, should be used to
identify things in data collection CSV files.

* [Intel](Intel/README.md)
* [Oracle](Oracle/README.md)
* [Hitachi](Hitachi/README.md)
* [TUM](TUM/README.md)
* [Motius](Motius/README.md)
* [Siemens](Siemens/README.md)

Whether or not a Thing is active and online should be indicated in the [`active.csv`](active.csv) file.
It is fine to submit a TD even if it is not running; simply indicate the Thing is inactive to avoid
having people waste time trying to test against it.

If you want to experiment with OneDM semantic annotation,
see [here](https://github.com/one-data-model/playground/tree/master/sdfObject).
[An example TD is here](https://github.com/mjkoster/ODM-Examples/blob/master/examples/switch-td.json).

