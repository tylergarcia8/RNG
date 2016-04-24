# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160424185349) do
=======
ActiveRecord::Schema.define(version: 20160424160343) do
>>>>>>> 5723b0a480500e8964abda240f05e4b1be0df76f

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "description"
    t.integer  "owner_id" # to be removed
    t.integer  "renter_id" 
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

<<<<<<< HEAD
  create_table "profiles", force: :cascade do |t|
    t.text     "bio"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
=======
  add_index "products", ["user_id"], name: "index_products_on_user_id"
>>>>>>> 5723b0a480500e8964abda240f05e4b1be0df76f

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
