Gem::Specification.new do |s|
    s.name          = 'defer_draper'
    s.version       = '0.0.1'
    s.date          = '2013-04-04'
    s.summary       = "Defer Draper"
    s.description   = "Decorate your variables just before render"
    s.authors       = ["Ricardo Franco"]
    s.email         = 'ricardo.krieg@gmail.com'
    s.files         = ['lib/defer_draper.rb']
    s.homepage      = 'http://github.com/ricardokrieg/defer_draper'

    s.add_dependency 'draper', '~> 1.0'

    s.add_development_dependency 'rspec', '~> 2.12'
    s.add_development_dependency 'rspec-rails', '~> 2.12'
end
