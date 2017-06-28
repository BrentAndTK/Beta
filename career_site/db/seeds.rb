# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Jobs.delete_all
 #...
Jobs.create!(
title: 'Lorem Ipsum',
description:
%{<p>
  <em> Lorem ipsum dolor sit amet </em>
  Morbi eleifend a sem ac ultricies. Curabitur fermentum rhoncus velit, ac pulvinar erat facilisis mattis. Pellentesque convallis mi lacus, ut vulputate neque egestas faucibus. Nullam quis venenatis leo, finibus ultrices nunc. Duis non purus risus. Ut sit amet tellus dignissim, ornare mauris in, pharetra velit. Proin vestibulum ex a turpis commodo gravida. </p>
},
salary: 30000.00
)
