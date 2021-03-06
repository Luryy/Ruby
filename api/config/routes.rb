Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope(path: "/api", format: "json") do
    resources :examples, only: [:index, :show, :create, :update, :destroy] do
		collection do
			get "search/:name", to: "examples#search_name", as: "example_search_name"
		end
	end

	resources :example_relations, only: [:index, :show, :create, :update, :destroy]
  end
end
