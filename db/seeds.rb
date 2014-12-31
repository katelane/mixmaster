# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
# create_table "mixers", force: true do |t|
#   t.string   "username",         null: false
#   t.string   "email",            null: false
#   t.string   "crypted_password", null: false
#   t.string   "salt",             null: false
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end
#
#
# rachel  = Mixer.create(username: "rachel", email: "rachel@example.com", password: "password", password_confirmation: "password",)
# jorge   = Mixer.create(username: "novohispano", email: "jorge@example.com", password: "password", password_confirmation: "password")
#
# appetizers      = Category.create(title: "Appetizers")
# sushi           = Category.create(title: "Sushi")
# rolls           = Category.create(title: "Rolls")
# specialty_rolls = Category.create(title: "Specialty Rolls")
# vegetarian      = Category.create(title: "Vegetarian")
# dairy_free      = Category.create(title: "Dairy Free")
# tempura         = Category.create(title: "Tempura")
# drinks          = Category.create(title: "Drinks")
#
# tuna_poke       = appetizers.menu_items.create!(title: "Tuna Poke", description: "tuna cubes, avocado, seaweed, togarashi", price: 995)
# miso_soup       = appetizers.menu_items.create!(title: "Miso Soup", description: "dashi, bonito, tofu", price: 5467)
# fried_octopus   = appetizers.menu_items.create!(title: "Fried Octopus", description: "baby octopus, sesame, ginger, soy sauce, light fried", price: 4995)
# edamame         = appetizers.menu_items.create!(title: "Edamame", description: "soy beans, soy sauce, togarashi", price: 1995)
# tempura_veggies = appetizers.menu_items.create!(title: "Tempura Veggies", description: "cauliflowers, carrots, sweet potato, broccoli", price: 5995)
# seaweed_salad   = appetizers.menu_items.create!(title: "Seaweed Salad", description: "seaweed, soy sauce, scallions, ginger, cilantro, pepper flakes", price: 3241)
#
# tuna       = sushi.menu_items.create!(title: "Tuna", description: "blank description", price: 1247)
# spicy_tuna = sushi.menu_items.create!(title: "Spicy Tuna", description: "blank description", price: 2903)
# fatty_tuna = sushi.menu_items.create!(title: "Fatty Tuna", description: "blank description", price: 3981)
# salmon     = sushi.menu_items.create!(title: "Salmon", description: "blank description", price: 7507)
# yellowtail = sushi.menu_items.create!(title: "Yellowtail", description: "blank description", price: 5917)
# mackerel   = sushi.menu_items.create!(title: "Mackerel", description: "blank description", price: 391)
# eel        = sushi.menu_items.create!(title: "Eel", description: "blank description", price: 1689)
#
# california_roll         = rolls.menu_items.create!(title: "California roll", description: "crab meat, cucumber, avocado", price: 917)
# spider_roll             = rolls.menu_items.create!(title: "Spider roll", description: "soft shell crab, daikon, cucumber, avocado, spicy mayonnaise", price: 7112)
# philadelphia_roll       = rolls.menu_items.create!(title: "Philadelphia roll", description: "salmon, cream cheese, cucumber", price: 6556)
# spicy_tuna_roll         = rolls.menu_items.create!(title: "Spicy tuna roll", description: "spicy tuna, sriracha mayonnaise, avocado", price: 1246)
# shrimp_tempura_roll     = rolls.menu_items.create!(title: "Shrimp tempura roll", description: "shrimp tempura, cucumber, ginger, yuzu", price: 4615)
# lobster_tempura_roll    = rolls.menu_items.create!(title: "Lobster tempura roll", description: "lobster tempura, crab, sriracha mayo, avocado", price: 379)
# vegetable_tempura_roll  = rolls.menu_items.create!(title: "Vegetable tempura roll", description: "califlower, sweet potato, zucchini, cucumber, yuzu", price: 3278)
#
# dragon_roll             = specialty_rolls.menu_items.create!(title: "Dragon roll", description: "eel, crab, avocado, topped with tuna and salmon, eel sauce", price: 3530)
# volcano_roll            = specialty_rolls.menu_items.create!(title: "Volcano roll", description: "spicy tuna, crab, salmon, ginger, spicy mayo, topped with crunch flakes.", price: 7133)
# orgasm_roll             = specialty_rolls.menu_items.create!(title: "Orgasm roll", description: "tuna, crab, yellowtail, avocado, cream cheese, spicy mayo, entire roll is deep fried", price: 1292)
# big_bang_roll           = specialty_rolls.menu_items.create!(title: "Big bang roll", description: "tuna, white tuna, shrimp, yellowtail, salmon, crab, avocado, jalapeno, topped with fresh water eel", price: 4712)
# rainbow_roll            = specialty_rolls.menu_items.create!(title: "Rainbow roll", description: "crab, seabass, cucumber, and avocado topped with salmon and tuna", price: 3479)
# spicy_cream_cheese_roll = specialty_rolls.menu_items.create!(title: "Spicy tofu cream cheese roll", description: "tofu tempura, cream cheese, avocado, crunch, spicy mayo", price: 4308)
# surf_and_turf_roll      = specialty_rolls.menu_items.create!(title: "Surf and turf roll", description: "lobster, crab, avocado, spicy mayo, topped with seared kobe beef", price: 6426)
#
#
# jorge.mixes.create do |mix|
#   mix.order_menu_items.build(menu_item: tea)
#   order.order_menu_items.build(menu_item: plum_wine, quantity: 3)
#   order.order_menu_items.build(menu_item: miso_soup, quantity: 3)
# end
#
# rachel.orders.create(status: "cancelled") do |order|
#   order.order_menu_items.build(menu_item: tea, quantity: 2)
#   order.order_menu_items.build(menu_item: miso_soup, quantity: 1)
#   order.order_menu_items.build(menu_item: edamame, quantity: 3)
#   order.order_menu_items.build(menu_item: eel, quantity: 2)
# end
#
# rachel.orders.create do |order|
#   order.order_menu_items.build(menu_item: eel, quantity: 1)
#   order.order_menu_items.build(menu_item: fatty_tuna, quantity: 1)
#   order.order_menu_items.build(menu_item: mackerel, quantity: 1)
#   order.order_menu_items.build(menu_item: yellowtail, quantity: 1)
#   order.order_menu_items.build(menu_item: yellowtail, quantity: 1)
#   order.order_menu_items.build(menu_item: salmon, quantity: 1)
# end
#
# jorge.orders.create do |order|
#   order.order_menu_items.build(menu_item: tuna_poke, quantity: 3)
#   order.order_menu_items.build(menu_item: fried_octopus, quantity: 4)
#   order.order_menu_items.build(menu_item: tempura_veggies, quantity: 1)
#   order.order_menu_items.build(menu_item: seaweed_salad, quantity: 2)
# end
