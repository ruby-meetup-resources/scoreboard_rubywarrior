# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scoreboard_rubywarrior/version'

Gem::Specification.new do |spec|
  spec.name          = "scoreboard_rubywarrior"
  spec.version       = ScoreboardRubywarrior::VERSION
  spec.authors       = ["Patrick Davey"]
  spec.email         = ["patrick.davey@gmail.com"]
  spec.summary       = %q{Adds the ability for rubywarrior to publish results to a webserver}
  spec.description   = %q{With the utmost thanks to Ryan Bates for his excellent rubywarrior, this
                          small addition adds the ability for the rubywarrior to publish level results
                          out to a webserver.  We wanted this ability to add a small competitive aspect
                          for the Christchurch Ruby group.  We hope that others will come to enjoy the
                          wonderful fun that battling monsters with ruby can be.

                          Pull requests very welcome :)}
  spec.homepage      = "https://github.com/ruby-meetup-resources/scoreboard_rubywarrior"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry", ">= 0.9.12"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "guard-rspec", "~> 4.3"
  spec.add_development_dependency "webmock"

  spec.add_runtime_dependency     "httparty", "~> 0.13"
  spec.add_runtime_dependency     "rubywarrior", "~> 0.1.3"
end
