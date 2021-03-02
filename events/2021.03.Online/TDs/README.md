# WoT Testing - March 2021 Online Plugfest 
## TD Archive

Please use `.td.jsonld` as the file suffix for TDs.
Automatic validation will be set up but all other file suffixes 
(including `.td` and `.json` files) will be ignored.
The validator will also look into subdirectories two levels down.
TDs should use a naming convention of `org-name.td.jsonld`, for example, `intel-camera.td.jsonld`.
This will help avoid accidental name conflicts.
The same base name, but with a `.csv` suffix, should be used to
provide manual assertions based on the [manual assertion CSV template](../manual.csv),
for example, `intel-camera.csv`.
In general, the base name (e.g. `intel-camera`, without the suffix, will be used to identify the Thing
in CSV data files.
Each contributing organization's directory may have other files using other suffixes,
for example `.md` files, and in particular a `README.md` describing the organization's
contributions is useful:

* [Hitachi](Hitachi/README.md)
* [Intel](Intel/README.md)
* [Oracle](Oracle/README.md)
* [Siemens](Siemens/README.md)
* [TUM](TUM/README.md)

Whether or not a Thing is active and online should be indicated in the 
[active CSV file](../active.csv).
It is fine to submit a TD even if the associated Thing is not running;
simply indicate the Thing is inactive to avoid
having people waste time trying to test against it.

If you want to experiment with OneDM semantic annotation,
see [here](https://github.com/one-data-model/playground/tree/master/sdfObject).
[An example TD is here](https://github.com/mjkoster/ODM-Examples/blob/master/examples/switch-td.json).
There is also a tool to [convert SDF files to TMs](https://github.com/roman-kravtsov/sdf-object-converter).
