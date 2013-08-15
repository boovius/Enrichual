User.destroy_all
Program.destroy_all

user1 = User.create({
  	name: "Vanessa Vengco",
    email: "vengco@gmail.com",
    password: "12345",
    password_confirmation: "12345"
})

user2 = User.create({
  	name: "Jane Papa",
    email: "jane@papa.com",
    password: "12345",
    password_confirmation: "12345"
})

user3 = User.create({
  	name: "Tim Baby",
    email: "timmy@baby.com",
    password: "12345",
    password_confirmation: "12345"
})


comment1 = Comment.new({
	comment: "This thing is amazing!",
	user: user2
})

comment2 = Comment.new({
	comment: "Add more exercise in the morning Fooo (bar?) !",
	user: user3
})

sleep1 = Program.create({
	title: 'Sleep Like a Saint',
	target: 'Sleep',
	objective: 'get better sleep',
	creator: user1,
	description: 'The following ritual involves diligent setting of bed time with a relaxing cup of chamomile and reading.',
	frequency: 'daily',
	days_to_complete: '30',
	comments: [comment1, comment2],
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

sleep2 = Program.create({
	title: 'Sleep Like a Badass',
	target: 'Sleep',
	objective: 'get better sleep',
	creator: user3,
	description: 'This ritual will let you sleep a bad ass motha fucka',
	frequency: 'daily',
	days_to_complete: '30',
	comments: [],
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

tsleep = Ritual.new({
	program: sleep1,
	daily_raitings: [
		{
			raiting: 6,
			date: "2013-08-13"
		},
		{
			raiting: 7,
			date: "2013-08-14"
		},
		{
			raiting: 5,
			date: "2013-08-15"
		},
		{
			raiting: 7,
			date: "2013-08-16"
		},
		{
			raiting: 8,
			date: "2013-08-17"
		},
		{
			raiting: 9,
			date: "2013-08-18"
		}
	]
})


tbone = User.create({
  	name: "Theresa Luu",
    email: "tbone@luu.com",
    born_on: "1983-05-12",
    password: "12345",
    password_confirmation: "12345",
    rituals: [tsleep]
})