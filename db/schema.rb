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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110401012944) do

  create_table "educations", :force => true do |t|
    t.string   "degree"
    t.string   "title"
    t.string   "school"
    t.date     "date_completed"
    t.integer  "matte_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employments", :force => true do |t|
    t.string   "title"
    t.string   "company_name"
    t.date     "date_started"
    t.date     "date_ended"
    t.text     "description"
    t.integer  "matte_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mattes", :force => true do |t|
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talents", :force => true do |t|
    t.string   "name"
    t.integer  "matte_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
