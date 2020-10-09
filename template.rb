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
# 
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
  directory "lib/templates/docs", 
end

source_paths

after_bundle do
  create_docs
end