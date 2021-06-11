# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cooking_spoon/version'

Gem::Specification.new do |spec|
  spec.name          = "cooking_spoon"
  spec.version       = CookingSpoon::VERSION
  spec.authors       = ["u16suzu"]
  spec.email         = ["u16suzu@gmail.com"]

  spec.summary       = %q{cooking_spoon gem is usefull for showing cooking spoon unit in recipe.}
  spec.description   = %q{cooking_spoon gem create string from Rational number.}
  spec.homepage      = "https://github.com/u16suzu/cooking_spoon"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "minitest", "~> 5.0"
end
