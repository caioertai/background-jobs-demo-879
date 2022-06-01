class LongProcessJob < ApplicationJob
  queue_as :default

  def perform(number)
    puts "Performing for #{number}..."
    # ...
    sleep 1
    # ...
    puts "..."
    sleep 1
    # ...
    puts "..."
    sleep 1
    # ...
    puts "Finished!"
  end
end
