
require_relative "lib/function/composite"

Gem::Specification.new do |spec|
  spec.name          = "function-composite"
  spec.version       = Function::Composite::VERSION
  spec.authors       = ["Nobuyoshi Nakada"]
  spec.email         = ["nobu@ruby-lang.org"]

  spec.summary       = %q{Syntax sugar for function composite}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/nobu/function-composite"
  spec.required_ruby_version = "2.6"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = %w[
    .gitignore
    .travis.yml
    README.md
    Rakefile
    bin/console
    function-composite.gemspec
    lib/function/composite.rb
    test/run-test.rb
    test/test-function-composite.rb
  ]

  spec.require_paths = ["lib"]
  spec.add_development_dependency "test-unit"
end
