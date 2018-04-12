require 'random_data'

puts 'Seeding started...'

# create Posts
50.times do
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end

posts = Post.all

# create Comments
100.times do
    Comment.create!(
        post: posts.sample, # '.sample' to pick a random post to associate each comment with
        body: RandomData.random_paragraph
    )
end

puts '#{Post.count} posts created'
puts '#{Comment.count} comments created'
puts 'Seed finished!'