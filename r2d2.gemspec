$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'r2d2/version'

Gem::Specification.new do |s|
  s.name              = "r2d2"
  s.version           = R2D2::VERSION
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["ActBlue Technical Services"]
  s.email             = ["contact@actblue.com"]
  s.homepage          = "https://github.com/actblue/r2d2"
  s.summary           = "Google Pay payment token decryption library"
  s.description       = "Given an (encrypted) Google Pay token, verify and decrypt it"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 2.2"

  s.add_runtime_dependency 'hkdf'

  s.add_development_dependency "bundler", "~> 2"
  s.add_development_dependency "rake", "~> 12.0"
  s.add_development_dependency "minitest", "~> 5.0"
  s.add_development_dependency "timecop"
  s.add_development_dependency "pry-byebug"
end
