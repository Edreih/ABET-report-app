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

ActiveRecord::Schema.define(version: 2019_04_12_052342) do

  create_table "administrators", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "title"
    t.string "office"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_criterions", force: :cascade do |t|
    t.string "course"
    t.string "description"
    t.integer "course_id"
    t.integer "criterion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "poor"
    t.float "acceptable"
    t.float "excellent"
    t.index ["course_id"], name: "index_course_criterions_on_course_id"
    t.index ["criterion_id"], name: "index_course_criterions_on_criterion_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "faculty_id"
    t.index ["faculty_id"], name: "index_courses_on_faculty_id"
  end

  create_table "criterions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "title"
    t.string "office"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculty_courses", force: :cascade do |t|
    t.integer "course_id"
    t.integer "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_faculty_courses_on_course_id"
    t.index ["faculty_id"], name: "index_faculty_courses_on_faculty_id"
  end

end
