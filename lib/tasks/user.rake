namespace :user do
  desc "Updates all users on Clearbit"
  task update_all: :environment do
    User.all.each do |user|
      UpdateUserJob.perform_later(user)
    end
  end

  desc "Enriching a given user with Clearbit (sync)"
  task :update, [:user_id] => :environment do |t, args|
    user = User.find(args[:user_id])
    puts "Enriching #{user.email}..."
    UpdateUserJob.perform_now(user)
    # rake task will return when job is _done_
  end
end
