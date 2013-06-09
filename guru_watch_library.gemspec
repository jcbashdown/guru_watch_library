# -*- encoding: utf-8 -*-
require File.expand_path('../lib/guru_watch_library/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jacob Ashdown"]
  gem.email         = ["jcbashdown@googlemail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  #gem.files         = Dir.glob("{lib,spec,test,core_schema,whirr,script}/**/*") + %w(LICENSE.txt README.md Rakefile)
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "guru_watch_library"
  gem.require_paths = ["lib"]
  gem.version       = GuruWatchLibrary::VERSION

  gem.add_dependency 'rake'
  gem.add_dependency 'activesupport', '3.2.2'
  gem.add_dependency 'activemodel', '3.2.2'
  gem.add_dependency 'active_attr'

  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'minitest-reporters'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'minitest-colorize'
  gem.add_development_dependency 'pry'
end
