relax = Program.create({
	title: 'Walk Through Life Like a Monk',
	target: 'relax',
	objective: 'feel more relaxed everyday',
	creator: '',
	description: 'Go through your days with a deep sense of calm and peace.',
	frequency: 'hourly',
	days_to_complete: '30',
	comments: [],
	steps: [{
		name: 'Ask Self',
		description: "Ask yourself what you are feeling, what is going on in your body.  Write it down.  Track your mood. Identify stress points.",
		location: 'anywhere',
		duration: '3',
		supplies: [{
			supply: 'pen',
			quantity: '1',
		}],
	},
	{
		name: 'Mantra Meditation',
		description: "Repeat a simple mantra, such as the word 'calm' in meditation breathing in and out",
		location: 'anywhere',
		duration: '5',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Set Intention',
		description: 'Set your intention to be at total peace and calm until the next go round.',
		location: 'anywhere',
		duration: '1',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	}],
	min_rating_descrip: "My heart is going to jump out of it's chest",
	max_rating_descrip: "I'm floating on clouds all day",
	users_rating: '7'
})

stress = Program.create({
	title: 'Terminate Your Stressful Problems',
	target: 'stress',
	objective: 'feel less stressed',
	creator: '',
	description: 'Break down your problems into managable chunks and create a course of forward action.',
	frequency: 'daily',
	days_to_complete: '30',
	comments: [],
	steps: [{
		name: 'Cull',
		description: "Write down any and all problems you currently have.",
		location: 'anywhere',
		duration: '4',
		supplies: [{
			supply: 'pen',
			quantity: '1',
		}],
	},
	{
		name: 'Pros/Cons',
		description: "Write out two possible courses of action for each problem.  Make a pros/cons list for each problem.",
		location: 'anywhere',
		duration: '15',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Set Course',
		description: 'Assess your pros/cons list, make a decisive action, writing down which course of action you will take and when.',
		location: 'anywhere',
		duration: '3',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	}],
	min_rating_descrip: "I can't see straight so much is swirling around me.",
	max_rating_descrip: "I'm a machine.  Nothing can stop me.",
	users_rating: '8'
})

energy = Program.create({
	title: 'Motor Through Your Day',
	target: 'energy',
	objective: 'feel more sustained energy throughout the day',
	creator: '',
	description: 'Keep your energy high throughout the day to maintain the utmost productivity.',
	frequency: 'daily',
	days_to_complete: '30',
	comments: [],
	steps: [{
		name: 'Cat-Nap',
		description: "Take a 5-10 minute cat nap.  No MORE!",
		location: 'work',
		duration: '10',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Rock Out',
		description: "After nap, pick a favorite high energy rock tune and in the privacy of your office, car, or bathroom stall, just let it all out.",
		location: 'work',
		duration: '7',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Change Your Socks',
		description: "Yes. Bring a 2nd pair of socks with you to work and change them after rocking out.  You'll feel refreshed.",
		location: 'work',
		duration: '2',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	}],
	min_rating_descrip: "My brain might as well be a pot of stew.",
	max_rating_descrip: "I'm a jumping bunny of productivity.",
	users_rating: '8'
})

happy = Program.create({
	title: "Happiness isn't just bliss",
	target: 'happier',
	objective: 'feel happier',
	creator: '',
	description: 'Be a better person. Enjoy your life more.  Feel happier.',
	frequency: 'daily',
	days_to_complete: '30',
	comments: [],
	steps: [{
		name: 'Express Love',
		description: "Reach out to one friend/loved-one/family member. Remember why you love them.  Express in no-certain terms just that.",
		location: 'work',
		duration: '5',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Plan A Trip',
		description: "Brainstorm and make plans for your dream trip or excursion.  Even if you never go the planning will make you happier!",
		location: 'work',
		duration: '15',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Gratitude Journal',
		description: "Write down 5 things you are grateful for and 5 more things you intend to be grateful for in the future.",
		location: 'work',
		duration: '10',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	}],
	min_rating_descrip: "My life is a cold dead bed of unhappiness.",
	max_rating_descrip: "I must be on drugs!",
	users_rating: '9'
})


productive = Program.create({
	title: 'Amp up your Productivity',
	target: 'productive',
	objective: 'be more productive',
	creator: '',
	description: "Get more output at higher quality from your work with these simple steps.",
	frequency: 'daily',
	days_to_complete: '30',
	comments: [],
	steps: [{
		name: 'Work in Spurts',
		description: "Set a timer for 90 minutes and begin working.  Take a break when the timer sounds. ",
		location: 'work',
		duration: '1',
		supplies: [{
			supply: 'timer',
			quantity: '1',
		}],
	},
	{
		name: 'Drink Water',
		description: "Upon your break, get up and go drink a full glass and a half of water.",
		location: 'work',
		duration: '2',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Say No',
		description: "Consciously say no to one thing each day.  Every no to one thing is a yes to something else.",
		location: 'work',
		duration: '1',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	}],
	min_rating_descrip: "I'm utterly worthless all day.",
	max_rating_descrip: "They should be running me on electricity.",
	users_rating: '8'
})


confident = Program.create({
	title: 'Be the center of every room.',
	target: 'confident',
	objective: 'be more confident',
	creator: '',
	description: "Become a more confident, strong willed, person through continual self development and challenge.",
	frequency: 'daily',
	days_to_complete: '30',
	comments: [],
	steps: [{
		name: 'Step Out',
		description: "Step Out of your comfort zone once per day.",
		location: 'anywhere',
		duration: '1',
		supplies: [{
			supply: 'timer',
			quantity: '1',
		}],
	},
	{
		name: 'Create Something',
		description: "Spend time each day putting in effort towards one creative personal venture.  Keep creating.",
		location: 'anywhere',
		duration: '20',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Complement Someone',
		description: "Sincerely, honestly, and originally take a moment to see what is good about someone else and tell them.",
		location: 'anywhere',
		duration: '2',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	}],
	min_rating_descrip: "I'm a worthless sack of garbage.  No one likes me or thinks I'm pretty.",
	max_rating_descrip: "I can do anything!",
	users_rating: '9'
})


spiritual = Program.create({
	title: 'Be in tune with the Universe',
	target: 'spiritual',
	objective: 'be more spiritual',
	creator: '',
	description: "Become a more spiritual, person through continual self growth.",
	frequency: 'daily',
	days_to_complete: '30',
	comments: [],
	steps: [{
		name: 'Meditate',
		description: "Remove your self to a place of silence.  Meditate on the question of what means most to you in life.",
		location: 'anywhere',
		duration: '15',
		supplies: [{
			supply: 'timer',
			quantity: '1',
		}],
	},
	{
		name: 'Take a Walk',
		description: "During lunch take a solitary walk.  Appreciate all the natural beauty, even if it's small all around you.",
		location: 'anywhere',
		duration: '10',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	},
	{
		name: 'Bed Reflect',
		description: "Just before going to sleep ask yourself the questions: 'what have you done to better your inner self on this day.'",
		location: 'bed',
		duration: '2',
		supplies: [{
			supply: '',
			quantity: '',
		}],
	}],
	min_rating_descrip: "I feel no connection with anything beyond my body what-so-ever.",
	max_rating_descrip: "The Universe and I are one.",
	users_rating: '7'
})