module Paperclip
  module RailsHelper
    def get_rails_env
      defined?(Rails.env) && Rails.env ? Rails.env : RAILS_ENV    
    end

    def get_rails_root
      defined?(Rails.root) && Rails.root ? Rails.root : RAILS_ROOT      
    end   
    
    def rails_env(env)
      silence_warnings do
        if defined?(Rails.env) && Rails.env
          Rails.env = env
        else   
          Object.const_set(:RAILS_ENV, env)
        end
      end
    end    
  end
end