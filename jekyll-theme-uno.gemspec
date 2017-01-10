# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-uno"
  spec.version       = "0.0.1"
  spec.authors       = ["Antonio Lorusso"]
  spec.email         = ["antonio.lorusso@gmail.com"]

  spec.summary       = %q{the Uno theme for jekyll as ruby gem}
  spec.homepage      = "https://github.com/zekus/jekyll-uno"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f| 
      f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "jekyll", "~> 3.3.1"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
