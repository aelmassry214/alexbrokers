# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ------------------------- Active_Admin default username and password --------------------------
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


# ------------------- seed data to database ----------------------------------
#require 'csv'
#
#csv_text = File.read(Rails.root.join('lib', 'seeds', 'prov3.csv'))
#csv = CSV.parse(csv_text, :headers => true)
#csv.each do |row|
#		Province.create!({
#			:name => row[0],
#			:governorate_id => row[1]     
#		})
#		puts "Row added!"
#end
#
#puts "There are now #{Province.count} rows in the transactions table"

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'gov.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
		Governorate.create!({
			:name => row[0]    
		})
		puts "Row added!"
end

puts "There are now #{Governorate.count} rows in the transactions table"