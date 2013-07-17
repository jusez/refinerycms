source 'https://rubygems.org'

gemspec

gem 'protected_attributes'
gem 'seo_meta', github: 'parndt/seo_meta', branch: 'master'

# Fixes uniqueness constraint on translated columns.
# See: https://github.com/svenfuchs/globalize3/pull/121
gem 'globalize3', github: 'svenfuchs/globalize3'
gem 'paper_trail', github: 'parndt/paper_trail', branch: 'rails4'
gem 'awesome_nested_set', github: 'collectiveidea/awesome_nested_set', branch: 'rails4'
gem 'routing-filter', github: "svenfuchs/routing-filter"
gem 'friendly_id', github: "FriendlyId/friendly_id", branch: 'rails4'
gem 'rails-observers'
gem 'actionpack-page_caching'

# Add support for refinerycms-acts-as-indexed
gem 'refinerycms-acts-as-indexed', '~> 1.0.0'

gem 'quiet_assets', group: :development

# Database Configuration
unless ENV['TRAVIS']
  gem 'activerecord-jdbcsqlite3-adapter', '>= 1.3.0.beta2', platform: :jruby
  gem 'sqlite3', platform: :ruby
end

if !ENV['TRAVIS'] || ENV['DB'] == 'mysql'
  gem 'activerecord-jdbcmysql-adapter', '>= 1.3.0.beta2', :platform => :jruby
  gem 'jdbc-mysql', '= 5.1.13', :platform => :jruby
  gem 'mysql2', :platform => :ruby
end

if !ENV['TRAVIS'] || ENV['DB'] == 'postgresql'
  gem 'activerecord-jdbcpostgresql-adapter', '>= 1.3.0.beta2', :platform => :jruby
  gem 'pg', :platform => :ruby
end

gem 'jruby-openssl', platform: :jruby

group :test do
  gem 'refinerycms-testing', '~> 2.1.0'
  gem 'generator_spec', '~> 0.9'
end

# To use debugger
# gem 'ruby-debug', platform: :mri_18
# or in 1.9.x:
# gem 'debugger', :platform => :mri_19

# For Heroku/s3:
# gem 'fog'

# Bundle edge Rails instead:
gem 'rails', '~> 4.0.0'

# gem 'rack', github: 'rack/rack'
# gem 'arel', github: 'rails/arel'

# Load local gems according to Refinery developer preference.
if File.exist? local_gemfile = File.expand_path('../.gemfile', __FILE__)
  eval File.read(local_gemfile)
end
