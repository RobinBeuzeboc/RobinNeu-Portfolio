# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

10.times do |blog|
Blog.create!(
	title: "My Blog Post #{blog}", 
	body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eget est a tortor tincidunt mattis. Aenean dictum tellus vitae varius varius. Praesent sodales consequat neque nec vestibulum. Cras fringilla erat nibh, quis rutrum magna tempus in. Aenean auctor tempus tellus, eget hendrerit lacus laoreet ut. Nam tristique elementum nisl vel placerat. Vivamus id quam vitae eros convallis auctor ac sed lacus. Vestibulum id nisl libero. Nunc a metus in diam luctus imperdiet eu ac dui. Pellentesque fringilla ante sed dui eleifend, id vehicula dolor dignissim. Nulla egestas dolor at justo scelerisque, vel bibendum libero ultricies. Vivamus fringilla, odio ut rutrum euismod, est orci pulvinar arcu, sit amet dignissim enim lectus eu eros. Quisque fringilla interdum risus, accumsan bibendum augue dapibus vitae. Aliquam venenatis ullamcorper nisl at congue. ",
	topic_id: Topic.last.id
	)
end
puts "10 blogs"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end
puts "5 blogs"


8.times do |portfolio|
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

puts "9 portfolio items"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}"
		)
end

puts "3 technos created"
