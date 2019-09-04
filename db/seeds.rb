# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Topic.create!(
	title: "General"
)
Topic.create!(
	title: "Coding"
)


Skill.create!(
	title: "Java",
	percent_utilized: 35
)

Skill.create!(
	title: "Relational databases",
	percent_utilized: 35
)

Skill.create!(
	title: "Pyton",
	percent_utilized: 20
)

Skill.create!(
	title: "Javascript",
	percent_utilized: 15
)

Skill.create!(
	title: "Ruby on Rails",
	percent_utilized: 10
)

Skill.create!(
	title: "Machine Learning",
	percent_utilized: 10
)



5.times do |portfolio|
	Portfolio.create!(
		title: "Portfolio title #{portfolio}",
		subtitle: "Ruby",
		body: "Suspendisse sit amet porttitor augue, eget tincidunt turpis. Donec quis nisl ultrices, porttitor mauris eget, pulvinar arcu. Donec maximus libero sed massa pretium vestibulum. Nulla facilisi. Suspendisse vitae rutrum sem, quis dictum neque. Curabitur sit amet lectus at erat lobortis faucibus. Fusce tempus nisl augue, sit amet pharetra nunc elementum non. Curabitur vel magna consequat, pulvinar tortor luctus, tempus tellus. ", 
		main_image: "https://via.placeholder.com/350x200", 
		thumb_image: "https://via.placeholder.com/600x400"
		)
end


1.times do |portfolio|
	Portfolio.create!(
		title: "Portfolio title #{portfolio}",
		subtitle: "Angular",
		body: "Suspendisse sit amet porttitor augue, eget tincidunt turpis. Donec quis nisl ultrices, porttitor mauris eget, pulvinar arcu. Donec maximus libero sed massa pretium vestibulum. Nulla facilisi. Suspendisse vitae rutrum sem, quis dictum neque. Curabitur sit amet lectus at erat lobortis faucibus. Fusce tempus nisl augue, sit amet pharetra nunc elementum non. Curabitur vel magna consequat, pulvinar tortor luctus, tempus tellus. ", 
		main_image: "https://via.placeholder.com/350x200", 
		thumb_image: "https://via.placeholder.com/600x400"
		)
end

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}"
		)
end

puts "3 technos created"


