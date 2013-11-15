# coding: utf-8
$LOAD_PATH << File.expand_path('../lib', __FILE__)
require 'jdbc/informix/version'

Gem::Specification.new do |spec|
  spec.name          = "jdbc-informix"
  spec.version       = Jdbc::Informix::VERSION
  spec.authors       = ["Pierre Paridans"]
  spec.email         = ["pierre.paridans@arag.be"]
  spec.description   = %q{Install this gem `require 'jdbc/informix'`}
  spec.summary       = %q{Informix JDBC driver for JRuby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
