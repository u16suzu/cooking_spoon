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
  spec.homepage      = "http://u16suzu.hatenablog.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
