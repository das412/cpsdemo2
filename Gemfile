source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.4'
gem 'pg', '>= 0.19', '>= 0.19.0'
gem 'mongoid', '6.0.0' #'~> 5.1', '>= 5.1.5'
gem 'puma', '~> 3.11'

gem 'jbuilder', '~> 2.0', '>= 2.6.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring', '~> 2.0', '>= 2.0.0'
  # gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
