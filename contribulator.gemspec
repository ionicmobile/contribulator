# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','contribulator_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'contribulator'
  s.version = Contribulator.version
  s.author = 'Matt Simpson'
  s.email = 'matt.simpson@asolutions.com'
  s.homepage = 'http://github.com/ionicmobile/contribulator'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Publish changes from one repo to another'
# Add your other files here if you make them
  s.files = %w(
bin/contribulator
  )
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'contribulator'
  s.add_dependency('gli')
  s.add_development_dependency('rake')
  s.add_development_dependency('bundler')
end
