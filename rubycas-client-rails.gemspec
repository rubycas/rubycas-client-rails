Gem::Specification.new do |s|
  s.name = %q{rubycas-client-rails}
  s.version = "0.1.1"

  s.authors = ["Matt Zukowski"]
  s.date = %q{2011-08-13}
  s.description = %q{Rails plugin for using the RubyCAS-Client as a controller filter.}
  s.summary = %q{RubyCAS-Client Railtie for Rails 3.0.}
  s.email = %q{matt dot zukowski at utoronto dot ca}
  s.files = `git ls-files`.split("\n")
  s.homepage = %q{http://rubycas-client.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rubycas-client}

  s.add_dependency('rails', '>= 3.0.0')
  s.add_dependency('rubycas-client', '~> 2.3.9.rc1')
end
