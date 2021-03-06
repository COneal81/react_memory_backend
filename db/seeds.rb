# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Memory.destroy_all
User.destroy_all
Caregiver.destroy_all
Visit.destroy_all

# User 
doug = User.create(name: "Doug", user_email: "doug@doug.com", password: "doug1234", family_member_email: "karioneal@yahoo.com")
oma = User.create(name: "Francine", user_email: "oma@oma.com", password: "oma12345", family_member_email: 'triadfirewood@gmail.com')


# Category
hobbies = Category.create(category_name: "Hobbies")
family  = Category.create(category_name: "Family")
careers = Category.create(category_name: "Careers")

# Memory
Memory.create(title: "Golf", description: "You enjoyed playing golf on prestigious gold courses with your son Pete.", 
    date: "1995 - current", image_url: "https://en.wikipedia.org/wiki/Augusta_National_Golf_Club#/media/File:Augusta_National_Golf_Club,_Hole_10_(Camellia).jpg", 
    category_id: hobbies.id, user_id: doug.id)

Memory.create(title: "Kari - Daughter", description: "You have one daughter, named Kari.  She lives on a farm and enjoys 
    showing horses.  She is currently attending The Flatiorn School, where she is learning to be a web developer.", 
    date: "July 5, 1981", image_url: "https://en.wikipedia.org/wiki/Western_pleasure#/media/File:Girlonhorse.jpg", category_id: family.id, user_id: doug.id)

Memory.create(title: "Gardening", description: "At your home on Park Road in Oakwood, you used to have an area at the very
    back of your property that you called the Hidden Garden.  You would drive the golf cart to get there and spend hours planting 
    and maaintaining it.  This is also where your son Bill was married to Hollie.", date: "1975 - 1998", image_url: 
    "https://en.wikipedia.org/wiki/Dutch_garden#/media/File:Dutch_Garden_P6110062.JPG", category_id: hobbies.id, user_id: oma.id)

# Caregiver
becky = Caregiver.create(caregiver_name: "Becky", employee_number: "BT111A", company_name: "Forever Young", caregiver_email: "becky@becky.com")
sam = Caregiver.create(caregiver_name: "Sam", employee_number: "SJ111A", company_name: "Kind Smiles", caregiver_email: "sam@sam.com")


# Visit
# vist_1 = 
Visit.create(visit_description: "He was very active today and we looked through all of him memories.  He really enjoyed talking about golfing.", 
    visit_date: DateTime.now, user_id: doug.id, caregiver_id: sam.id)
# visit_2 = 
Visit.create(visit_description: "She only wanted to talk about her gardens today.  Her memory seemed to serving her well today.", 
    visit_date: DateTime.now, user_id: oma.id, caregiver_id: becky.id)



