require 'defer_draper/action_controller'

module DeferDraper
    def decorate_all
        def self.defer_draper_decorate
            return true
        end
    end
end

ActionController::Base.send :include, DeferDraper
