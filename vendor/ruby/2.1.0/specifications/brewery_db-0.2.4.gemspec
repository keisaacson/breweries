# -*- encoding: utf-8 -*-
# stub: brewery_db 0.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "brewery_db"
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tyler Hunt", "Steven Harman"]
  s.date = "2014-04-07"
  s.homepage = "http://github.com/tylerhunt/brewery_db"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9")
  s.rubygems_version = "2.2.2"
  s.summary = "A Ruby library for using the BreweryDB API."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8.0"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.8"])
      s.add_runtime_dependency(%q<hashie>, ["< 3", ">= 1.1"])
      s.add_development_dependency(%q<dotenv>, ["~> 0.10"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<vcr>, ["~> 2.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.2"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.8.0"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.8"])
      s.add_dependency(%q<hashie>, ["< 3", ">= 1.1"])
      s.add_dependency(%q<dotenv>, ["~> 0.10"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<vcr>, ["~> 2.0"])
      s.add_dependency(%q<rake>, ["~> 10.2"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.8.0"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.8"])
    s.add_dependency(%q<hashie>, ["< 3", ">= 1.1"])
    s.add_dependency(%q<dotenv>, ["~> 0.10"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<vcr>, ["~> 2.0"])
    s.add_dependency(%q<rake>, ["~> 10.2"])
  end
end
