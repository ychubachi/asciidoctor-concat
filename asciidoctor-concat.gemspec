lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "asciidoctor/concat/version"

Gem::Specification.new do |spec|
  spec.name          = "asciidoctor-concat"
  spec.version       = Asciidoctor::Concat::VERSION
  spec.authors       = ["Yoshihide Chubachi"]
  spec.email         = ["yoshi@chubachi.net"]

  spec.summary       = %q{An Asciidoctor extention to Concatenate multiple lines.}
  spec.description   = %q{The extention concatenates multiple lines separated by LF charactors in AsciiDoc documents. When we write CJK documents, A LF charactor at the end of each lines are shown as unnecessary white spaces in a sentence.}
  spec.homepage      = "https://github.com/ychubachi/asciidoctor-concat"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ychubachi/asciidoctor-concat"
  spec.metadata["changelog_uri"] = "https://github.com/ychubachi/asciidoctor-concat/blob/master/CHANGELOG.adoc"

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
