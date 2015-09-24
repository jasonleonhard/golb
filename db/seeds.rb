# db/seeds.rb impliments the faker gem to seed the db
  # gem 'faker'

# Working:
require 'faker'
# require 'populator'

# works?
111.times do
  comment = Comment.create( 
    :com => Faker::Name.title, #=> "Legacy Creative Director",
    :body => Faker::Lorem.sentence(11) #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
  )
  puts comment.inspect
end

# works
111.times do
  post = Post.create( 
    :title => Faker::Name.title, #=> "Legacy Creative Director",
    :description => Faker::Lorem.sentence(11) #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
  )
  puts post.inspect
end

# works
111.times do
  user = User.create( 
    :first_name => Faker::Internet.user_name, #=> "Legacy Creative Director",
    :last_name => Faker::Internet.user_name,
    :age => Faker::Number.between(14,75)
  )
  puts user.inspect
end

# rake db:reset db:migrate db:seed
# rake db:reset db:migrate db:seed --trace
# https://github.com/stympy/faker