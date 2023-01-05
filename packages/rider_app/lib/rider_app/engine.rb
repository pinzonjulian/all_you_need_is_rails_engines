module RiderApp
  class Engine < ::Rails::Engine
    isolate_namespace RiderApp

    initializer "rider_app.assets" do |app|
      # add app/javascript in engine to mimic the default structure
      # of a vanilla Rails application
      app.config.assets.paths << Engine.root.join("app/javascript")
    end

    initializer "rider_app.importmap", before: "importmap" do |app|
      # Allows for composing importmaps from engines
      # https://github.com/rails/importmap-rails#composing-import-maps
      app.config.importmap.paths << Engine.root.join("config/importmap.rb")

      # Add the app/javascript folder of the engine to the cache sweeping mechanism
      # https://github.com/rails/importmap-rails#sweeping-the-cache-in-development-and-test
      app.config.importmap.cache_sweepers << Engine.root.join("app/javascript")
    end
  end
end
