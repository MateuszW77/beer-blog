Rails.application.routes.draw do

resources :beers

root to: 'welcome#home'

get  '/about',   to: 'welcome#about'
get  '/contact', to: 'welcome#contact'

end
