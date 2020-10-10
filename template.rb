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
  directory 'lib/templates/docs', 'docs'
end

##
# Generates a README from the template.
# Overwrites the Rails default README
#
def create_readme
  template 'lib/templates/README.md.tt', 'README.md', force: true
end

##
# Creates a boilerplate changelog
#
def create_changelog
  template 'lib/templates/CHANGELOG.md.tt', 'CHANGELOG.md'
end

def create_gitignore
  template 'lib/templates/.gitignore', '.gitignore', force: true
end

def create_gemfile
  template 'lib/templates/Gemfile.tt', 'Gemfile', force: true
end

##
# Runs the rspec installer
#
def create_rspec
  template 'lib/templates/.rspec', '.rspec'
end

def config_rspec
  create_spec_helper
  create_rails_helper
end

def create_spec_helper
  template 'lib/templates/spec/spec_helper.rb.tt', 'spec/spec_helper.rb'
end

def create_rails_helper
  template 'lib/templates/spec/rails_helper.rb', 'spec/rails_helper.rb'
end

def create_spec_support
  directory 'lib/templates/spec/support', 'spec/support'
end

def create_dev_procfile
  template 'lib/templates/Procfile.dev', 'Procfile.dev'
end

def create_rubocop
  template 'lib/templates/.rubocop.yml', '.rubocop.yml'
end

def create_dotenv
  template 'lib/templates/.env.tt', '.env'
end

def create_dotenv_template
  template 'lib/templates/.env.template.tt', '.env.template'
end

source_paths
create_gitignore
create_gemfile

after_bundle do
  create_docs
  create_changelog
  create_readme
  create_rspec
  config_rspec
  create_spec_support
  create_dev_procfile
  create_rubocop
  create_dotenv
  create_dotenv_template
end