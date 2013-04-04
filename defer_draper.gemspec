require File.expand_path('../lib/defer_draper/version', __FILE__)

Gem::Specification.new do |s|
    s.name          = 'defer_draper'
    s.version       = DeferDraper::VERSION
    s.date          = '2013-04-04'
    s.summary       = "Decorate your variables"
    s.description   = "Decorate all your instance variables just before render"
    s.authors       = ["Ricardo Franco"]
    s.email         = 'ricardo.krieg@gmail.com'
    s.files         = ['lib/defer_draper.rb', 'lib/defer_draper/action_controller.rb']
    s.homepage      = 'https://github.com/ricardokrieg/defer_draper'

    s.add_dependency 'draper', '~> 1.0'

    s.add_development_dependency 'rspec', '~> 2.12'
    s.add_development_dependency 'rspec-rails', '~> 2.12'
end
