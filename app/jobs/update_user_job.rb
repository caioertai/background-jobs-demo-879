class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Enriching user (#{user.email}) info"
    sleep 2
    puts "Finished updating user info (#{user.email})."
  end
end
