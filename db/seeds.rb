# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category
hobbies = Category.create(category_name: "Hobbies")
family  = Category.create(category_name: "Family")
careers = Category.create(category_name: "Careers")

# Memory
Memory.create(title: "Golf", description: "You enjoyed playing golf on prestigious gold courses with your son Pete.", 
    date: "1995 - current", image_url: "https://en.wikipedia.org/wiki/Augusta_National_Golf_Club#/media/File:Augusta_National_Golf_Club,_Hole_10_(Camellia).jpg", category_id: hobbies.id)

Memory.create(title: "Kari - Daughter", description: "You have one daughter, named Kari.  She lives on a farm and enjoys 
    showing horses.  She is currently attending The Flatiorn School, where she is learning to be a web developer.", 
    date: "July 5, 1981", image_url: "https://en.wikipedia.org/wiki/Western_pleasure#/media/File:Girlonhorse.jpg", category_id: family.id)

Memory.create(title: "Gardening", description: "At your home on Park Road in Oakwood, you used to have an area at the very
    back of your property that you called the Hidden Garden.  You would drive the golf cart to get there and spend hours planting 
    and maaintaining it.  This is also where your son Bill was married to Hollie.", date: "1975 - 1998", image_url: 
    "https://en.wikipedia.org/wiki/Dutch_garden#/media/File:Dutch_Garden_P6110062.JPG", category_id: hobbies.id)