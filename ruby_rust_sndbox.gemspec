# frozen_string_literal: true

require_relative "lib/ruby_rust_sndbox/version"

Gem::Specification.new do |spec|
  spec.name = "ruby_rust_sndbox"
  spec.version = RubyRustSndbox::VERSION
  spec.authors = ["Aleksandr Gavrishchuk"]
  spec.email = ["alex.phyp@gmail.com"]

  spec.summary = "This is sandbox with ruby to rust and vise versa interaction"
  spec.description = "Snadbox for testing rust to ruby interactions"
  spec.homepage = "https://github.com/aleksgav/ruby_rust_sndbox"
  spec.required_ruby_version = ">= 3.1.0"
  spec.required_rubygems_version = ">= 3.3.11"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["rubygems_mfa_required"] = "true"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aleksgav/ruby_rust_sndbox"
  spec.metadata["changelog_uri"] = "https://github.com/aleksgav/ruby_rust_sndbox"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/ruby_rust_sndbox/Cargo.toml"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
