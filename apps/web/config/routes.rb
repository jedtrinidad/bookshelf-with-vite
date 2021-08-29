# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/', to: 'home#index'
get '/about', to: 'about#index'
get '/books', to: 'books#index'
post '/books', to: 'books#create'
