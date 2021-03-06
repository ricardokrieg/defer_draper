module ActionController
    class Base
        def render(options = nil, extra_options = {}, &block)
            if self.defer_draper_decorate
                self.instance_variables.select {|variable|
                    not variable.to_s.start_with?('@_')
                }.map {|variable_name|
                    [variable_name, self.instance_variable_get(variable_name)]
                }.select {|variable_name, variable|
                    variable.respond_to?(:decorate)
                }.each {|variable_name, variable|
                    begin
                        self.instance_variable_set(variable_name, variable.decorate)
                    rescue Draper::UninferrableDecoratorError
                        ;
                    end
                }
            end

           super(options, extra_options, &block)
        end

        def defer_draper_decorate
            return false
        end
    end
end
