require 'spec_helper'

describe Ritual do
	describe '#total_duration' do
	  	context 'step1 = 2 mins, step2 = 5 mins, step3 = 15 mins' do 
	  		specify 'returns 22 minutes as a string' do
	  			step1 = Step.new(duration: 2)
	  			step2 = Step.new(duration: 5)
	  			step3 = Step.new(duration: 15)
  				ritual = Ritual.new(steps: [step1, step2, step3])
	  			expect(ritual.total_duration).to eql('22 minutes')
	  		end
	  	end

	  	context 'step1 = 30 mins, step2 = 5 mins, step3 = 15 mins' do 
	  		specify 'returns 22 minutes as a string' do
	  			step1 = Step.new(duration: 30)
	  			step2 = Step.new(duration: 5)
	  			step3 = Step.new(duration: 15)
  				ritual = Ritual.new(steps: [step1, step2, step3])
	  			expect(ritual.total_duration).to eql('50 minutes')
	  		end
	  	end

	  	context 'step1 = 180 mins, step2 = 5 mins, step3 = 15 mins' do 
	  		specify 'returns 22 minutes as a string' do
	  			step1 = Step.new(duration: 180)
	  			step2 = Step.new(duration: 5)
	  			step3 = Step.new(duration: 15)
  				ritual = Ritual.new(steps: [step1, step2, step3])
	  			expect(ritual.total_duration).to eql('3 hours and 20 minutes')
	  		end
	  	end
	end

end
