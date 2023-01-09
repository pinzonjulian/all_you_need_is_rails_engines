require "debug"

class PackageLoader
  DEFAULT_PACKAGES_ROOT = "packages".freeze

  def initialize(root_folder:)
    @root_folder = root_folder
    @module_paths = set_module_paths
  end

  attr_reader :root_folder

  def self.load_all(root_folder: DEFAULT_PACKAGES_ROOT)
    loader = new(root_folder: root_folder)
    loader.load_all
  end

  def load_all
    module_paths.each do |path|
      require_relative path
    end
  end

  private
  attr_accessor :module_paths

  def rails_root
    Rails.root
  end

  def set_module_paths
    path_to_engines = Dir.glob("#{root_folder}/**/engine.rb", base: rails_root)
    self.module_paths = path_to_engines.map do |path|
      path_parts = path.split("/")[1..-2]
      "#{["..", root_folder, *path_parts].join("/")}.rb"
    end
  end
end
