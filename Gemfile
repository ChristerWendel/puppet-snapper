source :rubygems

if ENV.key?('PUPPET_VERSION')
  puppetversion = "= #{ENV['PUPPET_VERSION']}"
else
  puppetversion = ['>= 3.4.3']
end

gem 'puppet-lint', '0.3.2'
gem 'puppetlabs_spec_helper'
gem 'puppet', puppetversion
