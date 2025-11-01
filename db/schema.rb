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

ActiveRecord::Schema[7.2].define(version: 2025_10_15_104554) do
  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.string "option4"
    t.integer "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_answers", force: :cascade do |t|
    t.integer "q1_id"
    t.integer "q2_id"
    t.integer "q3_id"
    t.integer "q4_id"
    t.integer "q5_id"
    t.integer "q6_id"
    t.integer "q7_id"
    t.integer "q8_id"
    t.integer "q9_id"
    t.integer "q10_id"
    t.integer "q1_yourans"
    t.integer "q2_yourans"
    t.integer "q3_yourans"
    t.integer "q4_yourans"
    t.integer "q5_yourans"
    t.integer "q6_yourans"
    t.integer "q7_yourans"
    t.integer "q8_yourans"
    t.integer "q9_yourans"
    t.integer "q10_yourans"
    t.boolean "q1_isCorrect"
    t.boolean "q2_isCorrect"
    t.boolean "q3_isCorrect"
    t.boolean "q4_isCorrect"
    t.boolean "q5_isCorrect"
    t.boolean "q6_isCorrect"
    t.boolean "q7_isCorrect"
    t.boolean "q8_isCorrect"
    t.boolean "q9_isCorrect"
    t.boolean "q10_isCorrect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
