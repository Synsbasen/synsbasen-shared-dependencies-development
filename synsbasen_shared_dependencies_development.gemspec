# frozen_string_literal: true

require_relative "lib/synsbasen_shared_dependencies_development/version"

Gem::Specification.new do |spec|
  spec.name = "synsbasen_shared_dependencies_development"
  spec.version = SynsbasenSharedDependenciesDevelopment::VERSION
  spec.authors = ["Jimmy Poulsen", "Tobias Knudsen"]
  spec.email = ["jimmy@poulsen.dk", "tobias.knudsen@gmail.com"]

  spec.summary = "A gem for managing shared development dependencies at Synsbasen across multiple applications."
  spec.description = "This gem provides a collection of development dependencies shared across Synsbasen's applications, including essential libraries for web application performance, monitoring, and error tracking."
  spec.homepage = "https://api.synsbasen.dk/"
  spec.license = "MIT"
  spec.required_ruby_version = "~> 3.2.1"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Synsbasen/synsbasen-shared-dependencies-development"
  spec.metadata["changelog_uri"] = "https://github.com/Synsbasen/synsbasen-shared-dependencies-development/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Specify the dependencies for the gem
  spec.add_dependency "better_errors", "2.10.1"
  spec.add_dependency "binding_of_caller", "1.0.1"
  spec.add_dependency "dockerfile-rails", "1.6.22"
  spec.add_dependency "dotenv-rails", "3.1.4"
  spec.add_dependency "factory_bot_rails", "6.4.4"
  spec.add_dependency "pry", "0.14.2"
  spec.add_dependency "rack-mini-profiler", "2.3.4"
  spec.add_dependency "rubocop", "1.68.0"
  spec.add_dependency "spring", "4.2.1"
  spec.add_dependency "web-console", "4.2.1"

  if Gem::Platform.local.os == "mingw" ||
      Gem::Platform.local.os == "x64-mingw" ||
      Gem::Platform.local.cpu == "x64" ||
      Gem::Platform.local.os == "darwin" ||
      Gem::Platform.local.os == "linux"
    spec.add_dependency "byebug", "11.1.3"
  end

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
