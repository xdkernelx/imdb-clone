# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create!([{name: 'Action'},
                              {name: 'Comedy'},
                              {name: 'Romance'},
                              {name: 'Drama'},
                              {name: 'Musical'}
                              ])

films = Film.create!([{ name: 'Star Wars', category_id: '1'},
                     { name: 'Lord of the Rings', category_id: '1' },
                     { name: 'Star Wars', category_id: '1'},
                     { name: 'Lord of the Rings', category_id: '1' },
                     { name: 'Rocky Horror Picture Show', category_id: '2'},
                     { name: 'Titanic', category_id: '3' },
                     { name: 'Ghostbusters', category_id: '2' },
                     { name: 'The Shawshank Redemption', category_id: '4' },
                     { name: 'The Dark Knight', category_id: '1' },
                     { name: 'Pulp Fiction', category_id: '1' }
                    ])


trusted_users = 15.times do
    User.create!(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.email,
                  password: 'password',
                  trusted: true
                )
end

plebians = []
30.times do
    user = User.new(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.email,
                  password: 'password',
                  trusted: false
                )
    plebians << user if user.valid?
    user.save
end

star_Wars_reviews = 3.times do |i|
    Review.create!(reviewer_id: trusted_users[i],
                   film_id: films[1],
                   title: Faker::Company.catch_phrase,
                   body: Faker::Hipster.sentence,
                   rating: [*3..5].sample
                   )
end

titanic_reviews = 3.times do |i|
    Review.create!(reviewer_id: trusted_users[(5 + i)],
                   film_id: films[6],
                   title: Faker::Team.name,
                   body: Faker::Lorem.paragraph,
                   rating: [*3..5].sample
                   )
end


comments = 25.times do |i|
    Comment.create!(commenter_id: plebians.sample.id,
                    review_id: [1..6].sample,
                    text: Faker::Hipster.paragraph

                    )
end

