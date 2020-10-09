##
# == Naming template methods
# We propose to use a naming convention for template methods to 
# make it easier to follow what the template does.
#
# This documentation uses [RDoc Markup](https://ruby-doc.org/stdlib-2.5.1/libdoc/rdoc/rdoc/RDoc/Markup.html)
#
# === Principles
#
# * Use a verb_ prefix to describe what the method does
# * Use simple language to describe the action
# 
# === Suggested prefixes
# 
# [add_]  add dependencies
# [create_] create files or directories
# [destroy_] remove files or directories 
# [config_] write config files / variables
# [install_] install third party tools
# [generate_] run rails generators

## 
# Sets source paths to be relative to the 
# template directory 
#
def source_paths
  [__dir__]
end

def config_app_name
end

##
# Copies the template docs directory
#
def create_docs
  directory "lib/templates/docs", "docs"
end

##
# Generates a README from the template.
# Overwrites the Rails default README
#
def create_readme
  template "lib/templates/README.md.tt", "README.md", force: true
end

##
# Creates a boilerplate changelog
#
def create_changelog
  template "lib/templates/CHANGELOG.md.tt", "CHANGELOG.md"
end

source_paths

after_bundle do
  create_docs
  create_changelog
  create_readme
end