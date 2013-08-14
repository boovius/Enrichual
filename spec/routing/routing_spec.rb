require 'spec_helper'

describe 'application routing' do 

	it 'routes /users/34/user-rituals/new to user_rituals#index' do 
		expect(get: '/users/34/user-rituals/new').to route_to(
			controller: 'user_rituals', action: 'new', user_id: '34')
	end

	it 'routes /users/34/user-rituals/35 to user_rituals#create' do 
		expect(post: '/users/34/user-rituals/35').to route_to(
			controller: 'user_rituals', action: 'create', user_id: '34', id: '35')
	end

end
