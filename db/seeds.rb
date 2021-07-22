# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Article.delete_all

10.times do
  new_article = Article.new(title: Faker::Books::CultureSeries.book, 
    content: Faker::Lorem.sentence(word_count: (35..50).to_a.sample, supplemental: true, random_words_to_add: 4))
  new_article.save
  puts new_article.title
  puts new_article.content
end