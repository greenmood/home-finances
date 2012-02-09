namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Example User",
                 :email => "example@example.com",
                 :password => "admin",
                 :password_confirmation => "admin")
    admin.toggle!(:admin)
    
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
      end
      User.all(:limit => 5).each do |user|
      		5.times do
        			user.finances.create!(:time => Time.now,:money => rand(3000)-1500, 
        								:comment => Faker::Lorem.sentence(4))
        		end
      end
      end
end
