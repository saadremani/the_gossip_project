# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

#La seed a eté divisé en sous-seed permettant de générer les tables indiduellement.

def seed_city

	City.destroy_all

	10.times do

		City.create!(name: Faker::Address.city)

	end

end


def seed_user

	User.destroy_all

	arr = City.all

	first_city = 0
	last_city = arr.size - 1
	
#boucle permettant de relier les données des tables.
	10.times do

		c = arr[(rand(first_city..last_city))]
		User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: rand(14..100), city: c)

	end

end

def seed_gossip

	Gossip.destroy_all

	arr = User.all

	first_user = 0
	last_user = arr.size - 1

#boucle permettant de relier les données des tables.
	20.times do

		u = arr[(rand(first_user..last_user))]
		Gossip.create!(title: Faker::Lorem.word, content: Faker::Lorem.paragraph, user: u)

	end

end


def seed_tag

	Tag.destroy_all


	10.times do

		Tag.create!(title: Faker::Lorem.word)

	end

end

def seed_linktag

	Linktag.destroy_all

	arr = Gossip.all
	arr2 = Tag.all 

	first_gossip = 0
	last_gossip = arr.size - 1

	first_tag = 0
	last_tag = arr2.size - 1

#boucle permettant de relier les données des tables.
	20.times do

		g = arr[(rand(first_gossip..last_gossip))]
		t = arr2[(rand(first_tag..last_tag))]
		Linktag.create!(gossip: g, tag: t)

	end

end

def seed_private_message
	
	PrivateMessage.destroy_all

	arr = User.all

	first_user = 0
	last_user = arr.size - 1

	20.times do

		u = arr[(rand(first_user..last_user))]
		PrivateMessage.create!(title: Faker::Lorem.word, content: Faker::Lorem.paragraph, sender: u)
	end
end
	
def seed_inbox

	Inbox.destroy_all

	arr = User.all
	arr2 = PrivateMessage.all

	first_user = 0
	last_user = arr.size - 1

	first_private_message = 0
	last_private_message = arr2.size - 1

	20.times do
	
		u = arr[(rand(first_user..last_user))]
		pm = arr2[(rand(first_private_message..last_private_message))]
		Inbox.create!(recipient: u, private_message: pm)

	end
end
	
	
#En commentant ou decommentant les lignes du perform on peut choisir quelle table sera générée.
def perform

	seed_city
	seed_user
	seed_gossip
	seed_tag
	seed_linktag
	#seed_private_message
	#seed_inbox

end

perform

