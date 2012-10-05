# -*- encoding: utf-8 -*-
require File.expand_path('../lib/easy_dl/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jakub Głuszecki"]
  gem.email         = ["jakub.gluszecki@expander.pl"]
  gem.description   = %q{Gem for generating html definition lists in Rails 3}
  gem.summary       = %q{Gem for generating html definition lists in Rails 3}
  gem.homepage      = "https://github.com/cthulhu666/easy_dl"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "easy_dl"
  gem.require_paths = ["lib"]
  gem.version       = EasyDl::VERSION
end
