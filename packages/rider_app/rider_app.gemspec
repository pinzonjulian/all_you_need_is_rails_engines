require_relative "lib/rider_app/version"

Gem::Specification.new do |spec|
  spec.name        = "rider_app"
  spec.version     = RiderApp::VERSION
  spec.authors     = ["Write your name"]
  spec.email       = ["Write your email address"]
  spec.summary     = "Summary of RiderApp."
  spec.description = "Description of RiderApp."
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
end
