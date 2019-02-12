
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test_copy_right_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "test_copy_right_tool"
  spec.version       = TestCopyRightTool::VERSION
  spec.authors       = ["Fernando Gomez"]
  spec.email         = ["fgomez.sierra95@gmail.com"]

  spec.summary       = %q{test ruby gem}
  spec.description   = %q{provides a test method}
  spec.homepage      = "https://redcarats.com"
  spec.license       = "MIT"

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
end
