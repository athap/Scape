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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120613171006) do

  create_table "answers", :force => true do |t|
    t.string   "description"
    t.integer  "score"
    t.string   "feedback"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "question_id"
    t.string   "identifier"
  end

  create_table "exams", :force => true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "level"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "selected_answer_identifier"
  end

  create_table "questions", :force => true do |t|
    t.string   "identifier"
    t.string   "description"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "correct_answer_identifier"
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.string   "school"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "state"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "teacher_id"
  end

end
