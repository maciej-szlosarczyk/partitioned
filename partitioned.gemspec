$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "partitioned/version"

Gem::Specification.new do |s|
  s.name           = 'partitioned'
  s.version        = Partitioned::VERSION
  s.license        = 'BSD-3-Clause'
  s.date           = '2015-10-02'
  s.summary        = "Postgres table partitioning support for ActiveRecord."
  s.description    = "A gem providing support for table partitioning in ActiveRecord. Support is available for Postgres only. Other features include child table management (creation and deletion) and bulk data creating and updating."
  s.authors        = ["Keith Gabryelski", "Aleksandr Dembskiy", "Edward Slavich"]
  s.email          = 'keith@fiksu.com'
  s.files          = `git ls-files`.split("\n")
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path   = 'lib'
  s.homepage       = 'http://github.com/fiksu/partitioned'

  s.add_dependency 'pg', '~> 0.18', '>= 0.18.4'
  s.add_dependency 'bulk_data_methods', '~> 1.1', '>= 1.1.2'
  s.add_dependency 'activerecord', '~> 4.1', '>= 4.1.13'

  s.add_development_dependency 'jquery-rails', '~> 4.1', '>= 4.1.1'
  s.add_development_dependency 'rails', '~> 4.1', '>= 4.1.13'
  s.add_development_dependency 'rspec-rails', '~> 3.4', '>= 3.4.2'
end
