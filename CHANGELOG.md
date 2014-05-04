# CHANGELOG for autopackage

## 0.2.0:
* Data format changed significantly. Autopackage is now a hash containing keys with the name of any package resources to be used (i.e., "gem_package"; the value for these keys is another hash in which the key is a package name and the value is a hash of options. See README for usage notes.)

## 0.1.0:

* Initial release of autopackage; in this version a straight list of packages were installed with the package resource.
