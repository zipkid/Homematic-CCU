lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Homematic/CCU/version'

Gem::Specification.new do |spec|
  spec.name          = 'Homematic-CCU'
  spec.version       = Homematic::CCU::VERSION
  spec.authors       = ['Stefan - Zipkid - Goethals']
  spec.email         = ['stefan@zipkid.eu']

  spec.summary       = 'Manage Homematic CCU'
  spec.description   = 'Manage Homematic CCU via de JSON-RPC API'
  spec.homepage      = 'https://github.com/zipkid/Homematic-CCU'

  spec.metadata['allowed_push_host'] = 'http://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/zipkid/Homematic-CCU'
  spec.metadata['changelog_uri'] = 'https://github.com/zipkid/Homematic-CCU/blob/master/changelog.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
