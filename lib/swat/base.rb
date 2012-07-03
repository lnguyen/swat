module Swat
  class << self
  
    def application 
      Base.run!
    end
    def run!
      load File.join(File.dirname(File.dirname(__FILE__)), 'config.ru')
    end
  end # class self

  class Base < ::Sinatra::Base
    set :server, %w[puma]
    set :public, File.expand_path('../public', __FILE__)
    set :views, File.expand_path('../views', __FILE__)

    get '/' do
      erb 'Hello world'
    end
  end
end
