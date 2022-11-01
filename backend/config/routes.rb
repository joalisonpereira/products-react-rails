Rails.application.routes.draw do
	resources :products, except:[:new] 
end
