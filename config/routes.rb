FamComm::Application.routes.draw do
	resources :family_members
	resources :comm_events

	match "pictures" => "pictures#index"
	match "pictures/:pic_id" => "pictures#show"
	
	root :to => 'comm_events#index'
end
