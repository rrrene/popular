# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'popular/version'

Gem::Specification.new do |spec|
  spec.name          = "popular"
  spec.version       = Popular::VERSION
  spec.authors       = ["thejchap"]
  spec.email         = ["commonmodestudio@gmail.com"]
  spec.summary       = %q{Friendship gem for Rails/ActiveRecord}
  spec.description   = %q{Friendship gem for Rails/ActiveRecord. Popular saves time when developing social apps}
  spec.homepage      = "http://thejchap.github.io/popular"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.2"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "sqlite3", "~> 1.3"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.3"
  spec.add_development_dependency "yard", "~> 0.8"
  spec.add_development_dependency "redcarpet", "~> 3.1"
  spec.add_development_dependency "inch", "~> 0.3"
end
