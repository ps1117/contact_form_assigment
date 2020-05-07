Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
localized do
    root to: 'contact_forms#contact'

	  resources :contact_forms do
	  	collection do
	  		get :contact
	  		post :submit_contact_details
	  	end
	  end
  end
end
