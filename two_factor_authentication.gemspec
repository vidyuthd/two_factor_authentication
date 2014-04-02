# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "two_factor_authentication/version"

Gem::Specification.new do |s|
  s.name        = "two_factor_authentication"
  s.version     = TwoFactorAuthentication::VERSION.dup
  s.authors     = ["Dmitrii Golub"]
  s.email       = ["dmitrii.golub@gmail.com"]
  s.homepage    = "https://github.com/Houdini/two_factor_authentication"
  s.summary     = %q{Two factor authentication plugin for devise}
  s.description = <<-EOF
    ### Features ###
    * control sms code pattern
    * configure max login attempts
    * per user level control if he really need two factor authentication
    * your own sms logic
  EOF

  s.rubyforge_project = "two_factor_authentication"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency 'rails', '>= 3.1.1'
  s.add_runtime_dependency 'devise'
  s.add_runtime_dependency 'randexp'
  s.add_runtime_dependency 'rotp'

  s.add_development_dependency 'bundler'
end