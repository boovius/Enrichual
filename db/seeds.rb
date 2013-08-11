User.destroy_all
Ritual.destroy_all 

users = User.create([
  {
  	name: "Vanessa Vengco",
    email: "vengco@gmail.com",
    password: "12345",
    password_confirmation: "12345"
  },
  {
  	name: "Jane Papa",
    email: "jane@papa.com",
    password: "12345",
    password_confirmation: "12345"
  },
  {
  	name: "Tim Baby",
    email: "timmy@baby.com",
    password: "12345",
    password_confirmation: "12345"
  }
])

new_ritual = Ritual.create({
	title: 'Sleep Like a Saint',
	target: 'Sleep',
	objective: 'get better sleep',
	description: 'The following ritual involves diligent setting of bed time with a relaxing cup of chamomile and reading.',
	frequency: 'daily',
	days_to_complete: '30',
	steps: [{
		name: 'set clock',
		description: 'set bed time when home from work 8 hrs prior to wake up time',
		location: 'home',
		duration: '2',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'make tea',
		description: 'make a cup of chamomile tea',
		location: 'home',
		duration: '5',
		supplies: [{
			supply: 'chamomile tea bag',
			quantity: '1',
		}],
	},
	{
		name: 'read',
		description: 'read until falling asleep',
		location: 'bed',
		duration: '15',
		supplies: [{
			supply: 'book',
			quantity: '1',
		}],
	}],
	min_rating_descrip: 'blood boiling anxiety without a wink',
	max_rating_descrip: 'sleeping on clouds',
	users_rating: '8.2'
})