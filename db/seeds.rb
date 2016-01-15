# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#class SeedApp

	USERS_LIMIT = 10
	NOTES_LIMIT = 10

	def create_users

		puts "Creating users & notes.."
		USERS_LIMIT.times do |i|

			# create user
			user = User.create!(
				:name  => Faker::Name.name,
				:email => Faker::Internet.email,
				:bio   => Faker::Lorem.paragraph(3, true)
			)

			# create user's notes
			rand(NOTES_LIMIT).times do |j|
				Note.create!(
					:user => user,	
					:title => Faker::Name.title,
					:description => Faker::Lorem.paragraph(3, true)
				)
			end
		end

	end

	def run
		create_users unless(User.any?)
	end

#end

# run 
#seed = SeedApp.new
run if Rails.env.development?
