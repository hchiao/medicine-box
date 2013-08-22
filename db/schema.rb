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

ActiveRecord::Schema.define(version: 20130822025738) do

  create_table "charts", force: true do |t|
    t.integer  "patient_id"
    t.integer  "age"
    t.float    "height"
    t.boolean  "diabetic"
    t.integer  "blood_pressure_systolic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blood_pressure_diastolic"
  end

  create_table "disease_patient_joins", force: true do |t|
    t.integer  "patient_id"
    t.integer  "disease_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diseases", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctor_patient_joins", force: true do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatments", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "disease_id"
  end

end
