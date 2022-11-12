# frozen_string_literal: true

require_relative "lib/log_parser/version"

Gem::Specification.new do |spec|
  spec.name = "log_parser"
  spec.version = LogParser::VERSION
  spec.authors = ["Michał Nowak"]
  spec.email = ["minow1980@gmail.com"]
  spec.summary = "Web log parser"
  spec.homepage = 'http://www.it-help.org.pl/'
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = 'https://example.com'
  spec.license     = "MIT"
  spec.metadata["homepage_uri"] = "http://example.com"
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
