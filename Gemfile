source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'rspec-rails', '2.12.0', group: [:test, :development]
gem 'sqlite3'
gem 'devise'
gem 'jquery-rails'
gem 'resque', '1.23.0'
gem "resque-scheduler", "~> 2.0.0"
gem 'rufus-scheduler'
gem 'haml', '3.1.6'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails', '1.0.3'
end

group :test do
  gem 'guard-migrate', '0.1.0'
  gem 'guard-bundler', '1.0.0'
  gem 'capybara', '2.0.1'
  gem 'guard-rspec', '2.1.1'
  gem 'rb-fsevent', '0.9.1'
  gem 'factory_girl', '4.1.0'
  gem 'ffaker', '1.15.0'

  if RUBY_PLATFORM.downcase.include?('darwin')
    gem 'rb-fsevent', '0.9.1'
  end

  if RUBY_PLATFORM.downcase.include?('linux')
    gem 'rb-inotify', '0.8.8'
  end
end

