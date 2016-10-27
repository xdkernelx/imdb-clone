# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!([{name: 'Action'},
                              {name: 'Comedy'},
                              {name: 'Romance'},
                              {name: 'Drama'},
                              {name: 'Musical'}
                              ])
categories = Category.all

Film.create!([{ name: 'Star Wars I', category_id: '1'},
                     { name: 'Lord of the Rings I', category_id: '1' },
                     { name: 'Star Wars II', category_id: '1'},
                     { name: 'Lord of the Rings I', category_id: '1' },
                     { name: 'Rocky Horror Picture Show', category_id: '2'},
                     { name: 'Titanic', category_id: '3' },
                     { name: 'Ghostbusters', category_id: '2' },
                     { name: 'The Shawshank Redemption', category_id: '4' },
                     { name: 'The Dark Knight', category_id: '1' },
                     { name: 'Pulp Fiction', category_id: '1' }
                    ])
films = Film.all

trusted_users = []
15.times do
    user = User.new(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.email,
                  password: 'password',
                  trusted: true
                )
    trusted_users << user if user.valid?
    user.save
end

trusted_users = User.all

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

3.times do |i|
    Review.create!(reviewer_id: 1,
                   film_id: 1,
                   title: Faker::Company.catch_phrase,
                   body: Faker::Hipster.sentence,
                   rating: [*3..5].sample
                   )
end

3.times do |i|
    Review.create!(reviewer_id: 2,
                   film_id: 6,
                   title: Faker::Team.name,
                   body: Faker::Lorem.paragraph,
                   rating: [*3..5].sample
                   )
end


25.times do |i|
    Comment.create!(commenter_id: 17,
                    review_id: 2,
                    text: Faker::Hipster.paragraph

                    )
end

