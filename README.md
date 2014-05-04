autopackage Cookbook
====================
Installs packages without needing a custom recipe. Most useful for installing packages from vagrant with `chef.json` or via a data bag for development projects where you are fleshing out requirements and aren't quite ready for writing custom recipes (or for light/personal use cases where writing a recipe makes little sense at all).

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
    <td>Hash</td>
    <td>A hash of resources which contains hashes of packages and settings.</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

Usage
-----
If using Librarian-chef, put in your Cheffile:

```ruby
cookbook "autopackage", :git => "https://github.com/abathur/chef-autopackage.git"
```

In your Vagrantfile:

```ruby
config.vm.provision :chef_solo do |chef|
    chef.json = {
      "autopackage" => {
        "gem_package" => {
          "rspec" => {"priority" => "pre"},
          "serverspec" => {"priority" => "normal"},
          "test-kitchen" => {"priority" => "normal"}
        }
      }
    }
    chef.add_recipe("autopackage")
end
```


License and Authors
-------------------
Author: Travis A. Everett
License: Apache 2.0
