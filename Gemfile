source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

##group :production do
##  gem 'pg'
##end

gem 'jbuilder'

group :development, :test do
  gem 'mysql2'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'rswag-specs'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'rails', '~> 6.1.7'

gem 'puma', '~> 5.0'

gem 'bootsnap', '>= 1.4.4', require: false

gem 'rack-cors'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

##UTILIZADO PARA AUTHENTICAÇÃO E TOKEN DE USUARIO
gem "devise", "~> 4.8"

gem "devise_token_auth", "~> 1.2"
##UTILIZADO PARA AUTHENTICAÇÃO E TOKEN DE USUARIO

## UTILIZADO PARA SWAGGER
gem "rswag", "~> 2.6"
