# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "findDep/version"

Gem::Specification.new do |spec|
  spec.name          = "findDep"
  spec.version       = FindDep::VERSION
  spec.authors       = ["mody"]
  spec.email         = ["mhussein1995@hotmail.com"]

  spec.summary       = "this gem helps you to find your missing dependencies and install them for you"
  spec.description   = "just awesome"
  spec.homepage      = "am to poor to handle a site "
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "httparty"
end
