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

ActiveRecord::Schema.define(version: 20171002235353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.string "url"
    t.string "location"
    t.string "quadrant"
    t.integer "price"
    t.integer "rooms"
    t.integer "sq_ft"
    t.date "date"
    t.string "title"
  end

  create_table "apartments_users", force: :cascade do |t|
    t.integer "apartment_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "username"
  end

end
