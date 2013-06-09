# -*- coding: UTF-8 -*-

# This loads the application *without* any frontend.
# To run a specific *fronted* (like a web app) go to app/frontends/*.

class Application

  require 'singleton'
  include Singleton

  def initialize!
    require_stdlib
    require_bundler_default_group
    augment_load_path
    require_lib
  end

  def config
    @config ||= OpenStruct.new
  end

  def configure
    yield(config)
  end

  def env
    ENV['APP_ENV'] || 'development'
  end

  def root
    File.expand_path("#{File.dirname(__FILE__)}/../")
  end

  private

  def require_stdlib
    require 'ostruct'
  end

  def require_bundler_default_group
    Bundler.require(:default)
  end

  def require_lib
    #require_relative '../lib/all'
  end

  def augment_load_path
    libpath = File.expand_path( File.dirname( __FILE__ ) + '../../lib' )
    $LOAD_PATH << libpath
  end

end

Application.instance.initialize!
