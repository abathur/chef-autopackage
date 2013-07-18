autopackage Cookbook
====================
Installs a list/array of packages with the `package` resource without needing a custom recipe. Most useful for installing packages from vagrant with `chef.json` or via a data bag definition.

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['autopackage']</tt></td>
    <td>List</td>
    <td>A list of string package names which will be passed to the `package` resource.</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

Usage
-----
In your Cheffile:
cookbook "autopackage", :git => "https://github.com/abathur/chef-autopackage.git"

In your Vagrantfile:

```ruby
config.vm.provision :chef_solo do |chef|
    chef.json = {
      "autopackage" => ["git-svn", "libsqlite3-dev", "libjson0-dev", "libpcre3-dev"]
    }
    chef.add_recipe("autopackage")
end
```


License and Authors
-------------------
Author: Travis A. Everett
