# -*- encoding: utf-8 -*-
require File.expand_path('../lib/markdownable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aaron Cruz"]
  gem.email         = ["aaron@aaroncruz.com"]
  gem.description   = %q{Dynamically creates a markdown field on your classes}
  gem.summary       = %q{Dynamically creates a markdown field on your classes}
  gem.homepage      = "http://aaroncruz.com"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "markdownable"
  gem.require_paths = ["lib"]
  gem.version       = Markdownable::VERSION

  gem.add_development_dependency "rails"
  gem.add_development_dependency "rspec-rails"
  gem.add_development_dependency "sqlite3"

  gem.add_dependency 'redcarpet'
end
