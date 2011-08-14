source "http://rubygems.org"

# Specify your gem's dependencies in salesforce_connector.gemspec
gemspec

# Gem for testing
group :test do
  gem "ZenTest",    "~> 4.4.0"
  gem "rake",       "~> 0.8.7"
  gem "bundler"
  gem "rspec",      "~> 1.3.0"
  gem "diff-lcs"
  case
  when defined?(RUBY_ENGINE) && RUBY_ENGINE == 'rbx'
    # Skip it
  when RUBY_PLATFORM == 'java'
    # Skip it
  when RUBY_VERSION < '1.9'
    gem "ruby-debug"
  else
    # Skip it
  end
end

