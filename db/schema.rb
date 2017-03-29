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

ActiveRecord::Schema.define(version: 20170328123906) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "content"
    t.string   "picture"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.integer  "vote_count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "answer_id"
    t.integer  "question_id"
    t.integer  "user_id"
    t.boolean  "seen",        default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["answer_id"], name: "index_notifications_on_answer_id"
    t.index ["question_id"], name: "index_notifications_on_question_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "picture"
    t.integer  "category_id"
    t.integer  "user_id"
    t.integer  "vote_count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_questions_on_category_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_reports_on_question_id"
    t.index ["user_id", "question_id"], name: "index_reports_on_user_id_and_question_id", unique: true
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.boolean  "is_admin",   default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "votable_id"
    t.string   "votable_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_votes_on_user_id"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
  end

end
