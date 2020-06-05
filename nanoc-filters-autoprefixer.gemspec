Gem::Specification.new do |spec|
  spec.name          = "nanoc-filters-autoprefixer"
  spec.version       = "1.0.0"
  spec.authors       = ["Roger Que"]
  spec.email         = ["git@alerante.net"]

  spec.summary       = "A nanoc filter that processes CSS with Autoprefixer."
  spec.homepage      = "https://github.com/query/nanoc-filters-autoprefixer"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.add_dependency "autoprefixer-rails"
  spec.add_dependency "nanoc-core", "~> 4.11.13"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
