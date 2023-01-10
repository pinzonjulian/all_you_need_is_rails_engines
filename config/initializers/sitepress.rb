Sitepress.configure do |config|
  ## Change the root_path of the Sitepress site, or set to a different
  ## Sitepress instance.
  config.site = Sitepress::Site.new root_path: "./packages/marketing_site/app/content"
  config.parent_engine = MarketingSite::Engine # This isn't working
end