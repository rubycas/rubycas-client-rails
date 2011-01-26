Gem::Specification.new do |s|
  s.name = %q{rubycas-client-rails}
  s.version = "0.0.1"

  s.authors = ["Matt Zukowski"]
  s.date = %q{2011-01-26}
  s.description = %q{Rails plugin for using the RubyCAS-Client as a controller filter.}
  s.email = %q{matt dot zukowski at utoronto dot ca}
  s.files = `git ls-files`.split("\n")
  s.homepage = %q{http://rubycas-client.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rubycas-client}

  s.add_dependency('rails', '>= 3.0.0')
  s.add_dependency('rubycas-client', '>= 2.1.0')
end
