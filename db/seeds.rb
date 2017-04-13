# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all

classifications = ["GENERAL WORKS", "PHILOSOPHY. PSYCHOLOGY. RELIGION", 
									"AUXILIARY SCIENCES OF HISTORY", "WORLD HISTORY AND HISTORY", 
									"HISTORY OF THE AMERICAS", 
									"GEOGRAPHY. ANTHROPOLOGY. RECREATION", "SOCIAL SCIENCES", 
									"POLITICAL SCIENCE", "LAW", "EDUCATION", "MUSIC AND BOOKS ON MUSIC", 
									"FINE ARTS", "LANGUAGE AND LITERATURE", "SCIENCE", "MEDICINE", 
									"AGRICULTURE", "TECHNOLOGY", "MILITARY SCIENCE", "NAVAL SCIENCE", 
									"BIBLIOGRAPHY", "LIBRARY SCIENCE" , "INFORMATION RESOURCES"]

fiction = ["Fiction", "Non Fiction"]

50.times do |variable|
  Book.create([{
  	title: Faker::Book.title,
  	author: Faker::Book.author,
  	genre: Faker::Book.genre,
  	fiction: fiction.sample,
    classification: classifications.sample,
  	year: Faker::Number.between(1870, 2017)
  	}])
end





