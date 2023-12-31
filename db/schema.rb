# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_08_01_092312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "difficulties", force: :cascade do |t|
    t.string "difficulty"
  end

  create_table "lengths", force: :cascade do |t|
    t.string "length"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "summary_id"
    t.integer "user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "content"
    t.string "keyword"
    t.integer "difficulty_id"
    t.integer "length_id"
  end

  create_table "summaries", force: :cascade do |t|
    t.integer "post_id"
    t.string "title"
    t.integer "user_id"
    t.string "summary"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
