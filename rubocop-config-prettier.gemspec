
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/config/prettier/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-config-prettier"
  spec.version       = Rubocop::Config::Prettier::VERSION
  spec.authors       = ["Richard Huang"]
  spec.email         = ["flyerhzm@gmail.com"]

  spec.summary       = 'Turns off all rules that are unnecessary or might conflict with prettier plugin ruby.'
  spec.description   = 'Turns off all rules that are unnecessary or might conflict with prettier plugin ruby.'
  spec.homepage      = 'https://github.com/xinminlabs/rubocop-config-prettier'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
