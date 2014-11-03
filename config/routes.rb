AuthDemo::Application.routes.draw do
  get "/home", to: "staticpages#home", as: "home"
  get "/about", to: "staticpages#about", as: "about"
  get "contact", to: "staticpages#contact", as: "contact"
  resource :session, only: [:create, :destroy]
  resource :user, only: [:create, :new, :show] do
    resource :counter, only: [:update]
  end
  root to: "staticpages#home"
end
