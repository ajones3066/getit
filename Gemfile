source :rubygems
gem 'rails', '3.2.5'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  platforms :jruby do
    gem 'therubyrhino'
  end
  platforms :ruby do
    gem 'therubyracer'
  end
  gem 'uglifier', '>= 1.0.3'
  gem "compass-rails", "~> 1.0.3"
  gem 'nyulibraries_assets', :git => "git://github.com/NYULibraries/nyulibraries_assets.git"
  # gem 'nyulibraries_assets', :path => '/Users/dalton/Documents/workspace/nyulibraries_assets'
end

platforms :jruby do
  gem 'activerecord-jdbc-adapter', :require => false
  gem 'jdbc-mysql', :require => false
  gem 'jruby-rack'
  gem 'jruby-openssl'
end

platforms :ruby do
  gem 'mysql2'
end

# Use jquery
gem 'jquery-rails'

# Use mustache
gem 'mustache-rails', :require => 'mustache/railtie'

# Deploy with Capistrano
gem 'capistrano'
gem 'rvm-capistrano'

# Use passenger as the app server
gem 'passenger'

# Umlaut
gem 'umlaut', :git => "git://github.com/team-umlaut/umlaut.git", :branch => "bootstrap"
# gem 'umlaut', :path => '/Users/dalton/Documents/workspace/umlaut/umlaut3'
gem 'sunspot_rails'
gem 'exlibris-aleph', "~> 0.1.4"
gem 'authpds-nyu', "~> 0.1.4"
gem 'dalli'

group :development, :test do
  gem 'progress_bar'
end
