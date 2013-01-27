# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ticketable/version'

Gem::Specification.new do |gem|
  gem.name          = "ticketable"
  gem.version       = Ticketable::VERSION
  gem.authors       = ["antho1404"]
  gem.email         = ["anthony.estebe@gmail.com"]
  gem.description   = %q{Make every ressource as a ticket with a status and a brief}
  gem.summary       = %q{Make every ressource as a ticket with a status and a brief}
  gem.homepage      = "https://github.com/antho1404/ticketable"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
