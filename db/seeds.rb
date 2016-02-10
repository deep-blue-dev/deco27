# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Need to have seed with one admin
# Admin.create email: 'admin@deco27.net', password: '1234567890'

categories = [
  {
    name:"Bois Du Chandon",
    image:""
  },
  {
    name:"D Chateau",
    image:""
  },
  {
    name:"Solid Woods",
    image:""
  },
  {
    name:"Engineered",
    image:""
  },
  {
    name:"Eco-friendly-castle",
    image:""
  },
  {
    name:"Specialties",
    image:""
  },
  {
    name:"Design Ideas",
    image:""
  },
  {
    name:"Wine Cellars",
    image:""
  },
  {
    name:"Porcelain",
    image:""
  },
  {
    name:"Doors",
    image:""
  },
  {
    name:"Decking",
    image:""
  },
  {
    name:"Walls",
    image:""
  },
  {
    name:"Stairs",
    image:""
  }
]

category = Category.create(categories)

products = [
  {
    name:"",
    # price:0,
    description:"",
    image: "",
    logo:"",
    category_id:,
    mod_name:""
  }
]
