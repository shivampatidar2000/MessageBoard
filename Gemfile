source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.0"

gem "rails", "~> 7.0.4"

gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'activeadmin'
gem 'simple_form', '~> 5.2'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem "sprockets-rails"
gem 'coffee-rails'

gem "puma", "~> 5.0"

gem "importmap-rails"

gem 'jquery-rails'

gem 'turbolinks'

gem "turbo-rails"

gem "stimulus-rails"

gem "jbuilder"

gem "redis", "~> 4.0"

gem 'carrierwave'   
gem "image_processing"


gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

#  gem "byebug"

group :development do
  gem "web-console"
gem "sqlite3", "~> 1.4"

end

group :production do 
 gem 'pg'

end
group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'figaro'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'shoulda-callback-matchers', '~> 1.1', '>= 1.1.4'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'simplecov', '~> 0.12.0'
end