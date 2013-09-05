source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.14'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'rolify'
gem 'simple_form'

group :assets do
  gem 'less-rails'
  gem 'therubyracer', :platform=>:ruby
  gem 'twitter-bootstrap-rails'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'mysql2'
  gem 'pry'
  gem 'pry-rails'
  gem 'letter-opener'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'thin'
end

group :production do
  gem "thin"
  gem 'pg', '0.15.1'
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'launchy'
end
