require 'random_data'

p 'Seeding started...'

# create Topics
15.times do
   Topic.create!(
        name: RandomData.random_sentence,
        description: RandomData.random_paragraph
    ) 
end

# create Posts
25.times do
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end

posts = Post.all

# create Comments
50.times do
    Comment.create!(
        post: posts.sample, # '.sample' to pick a random post to associate each comment with
        body: RandomData.random_paragraph
    )
end

p "#{Topic.count} topics created"
p "#{Post.count} posts created"
p "#{Comment.count} comments created"
p 'Seed finished!'