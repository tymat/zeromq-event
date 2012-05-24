# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zeromq-event/version"

Gem::Specification.new do |s|
  s.name        = "zeromq-event"
  s.version     = EmZeromq::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Anthony Eufemio"]
  s.email       = ["anthony.eufemio@gmail.com"]
  s.homepage    = "https://github.com/aeufemio77/zeromq-event"
  s.summary     = %q{Low level event machine support for ZeroMQ}
  s.description = %q{Low level event machine support for ZeroMQ}
  s.rdoc_options = ["--main", "README.md"]

  s.rubyforge_project = "em-zeromq"

  s.add_dependency 'eventmachine', '1.0.0.beta.4'
  s.add_dependency 'ffi', '>= 1.0.0'
  s.add_dependency 'ffi-rzmq', '0.9.3'

  s.add_development_dependency 'rspec', '>= 2.5'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rake'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
