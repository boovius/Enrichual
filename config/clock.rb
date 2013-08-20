# Sidekiq defers scheduling to other, better suited gems.
# If you want to run a job regularly, here's an example
# of using the 'clockwork' gem to push jobs to Sidekiq
# regularly.

# require boot & environment for a Rails app
require_relative "../config/boot"
require_relative "../config/environment"
require "clockwork"


class MyWorker
  include Sidekiq::Worker

  def perform(count)
    puts "Job ##{count}: Late night, so tired..."
  end

  def self.late_night_work
    10.times do |x|
      perform_async(x)
    end
  end
end

module Clockwork
  # Kick off a bunch of jobs early in the morning
  every 10.seconds, 'my_worker.late_night_work' do
    MyWorker.late_night_work
  end
end