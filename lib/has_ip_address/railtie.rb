# encoding: utf-8
require 'rails'
require 'has_ip_address'

module HasIpAddress  
  class Railtie < ::Rails::Railtie
    config.before_initialize do
      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.send :include, HasIpAddress
      end
    end
  end
end
