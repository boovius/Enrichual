User.destroy_all
Program.destroy_all

vv = User.new({
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


user4 = User.create({
  	name: "Sam Diggidy",
    email: "sam@mistobox.com",
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
	target: 'sleep',
	objective: 'get better sleep',
	creator: vv,
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

commentWake = Comment.new({
	comment: "This really helped me start my days right!",
	user: vv
})

wakeUp = Program.create({
	title: 'Wake like an Angel',
	target: 'Wake',
	objective: 'Wake up easier',
	creator: user4,
	description: 'Wake up and start everyday relaxed, easy, and stress free.',
	frequency: 'daily',
	days_to_complete: '30',
	comments: [commentWake],
	steps: [{
		name: 'get water',
		description: 'Wake up and get a glass of water. Drink it.',
		location: 'home',
		duration: '3',
		supplies: [{
			supply: 'glass of water',
			quantity: '1',
		}],
	},
	{
		name: 'Music',
		description: 'Turn on soothing, relaxing music full of postive energy',
		location: 'home',
		duration: '1',
		supplies: [{
			supply: 'music player',
			quantity: '1',
		}],
	},
	{
		name: 'meditate',
		description: 'meditate to soothing music',
		location: 'home',
		duration: '15',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	}],
	min_rating_descrip: 'I hate the entire world!!',
	max_rating_descrip: 'Waking up is my favorite part of the day!',
	users_rating: '8.6'
})

tsleep = Ritual.new({
	program_id: sleep1.id,
	daily_ratings: [
		{
			rating: 6,
			date: "2013-08-13"
		},
		{
			rating: 7,
			date: "2013-08-14"
		},
		{
			rating: 5,
			date: "2013-08-15"
		},
		{
			rating: 7,
			date: "2013-08-16"
		},
		{
			rating: 8,
			date: "2013-08-17"
		},
		{
			rating: 9,
			date: "2013-08-18"
		}
	]
})

vWake = Ritual.new({
	program_id: wakeUp.id,
	starting_level: 4,
	daily_ratings: [
		{
			rating: 6,
			date: "2013-08-13"
		},
		{
			rating: 7,
			date: "2013-08-14"
		},
		{
			rating: 5,
			date: "2013-08-15"
		},
		{
			rating: 7,
			date: "2013-08-16"
		},
		{
			rating: 8,
			date: "2013-08-17"
		},
		{
			rating: 9,
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

vv.rituals << vWake

vv.save