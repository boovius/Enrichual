require 'spec_helper'

describe 'application routing' do 

	it 'routes /users/34/user-rituals/new to rituals#index' do 
		expect(get: '/programs/34/rituals/new').to route_to(
			controller: 'rituals', action: 'new', user_id: '34')
	end

	it 'routes /users/34/user-rituals/35 to rituals#create' do 
		expect(post: '/users/34/rituals/35').to route_to(
			controller: 'rituals', action: 'create', user_id: '34', id: '35')
	end

end
