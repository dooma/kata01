# -*- encoding: utf-8 -*-
require File.expand_path('../lib/kata01/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["dooma"]
  gem.email         = ["calinutz96@yahoo.com"]
  gem.description   = %q{"read data and print smallest temperature"}
  gem.summary       = %q{"Just some practice"}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "kata01"
  gem.require_paths = ["lib"]
  gem.version       = Kata01::VERSION
end

