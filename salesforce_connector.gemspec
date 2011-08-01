# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "salesforce_connector/version"

Gem::Specification.new do |s|
  s.name        = "salesforce_connector"
  s.version     = SalesforceConnector::VERSION
  s.authors     = ["Vzmind"]
  s.email       = ["vzmind@gmail.com"]
  s.homepage    = "http://github.com/vzmind"
  s.summary     = "Connect your Rails 3 app to a Salesforce account"
  s.description = "Use Omniauth OAuth authentification strategy and REST API with httparty"

  s.rubyforge_project = "salesforce_connector"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency("omniauth", "~> 2.0.4")
  s.add_dependency("httpparty","~> 0.7.7")

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
