# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','publish_to_contribs_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'publish_to_contribs'
  s.version = PublishToContribs::VERSION
  s.author = 'Matt Simpson'
  s.email = 'matt.simpson@asolutions.com'
  s.homepage = 'http://github.com/ionicmobile/publish_to_contribs'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Publish changes from one repo to another, for a list of repo pairs'
# Add your other files here if you make them
  s.files = %w(
bin/publish_to_contribs
  )
  s.require_paths << 'lib'
  s.has_rdoc = false
  s.bindir = 'bin'
  s.executables << 'publish_to_contribs'
  s.add_development_dependency('rake')
end
