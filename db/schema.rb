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

ActiveRecord::Schema.define(version: 20140131053732) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "cleaner_applications", force: true do |t|
    t.string   "applicant_legal_name"
    t.string   "applicant_area"
    t.string   "applicant_email"
    t.integer  "applicant_contact_number"
    t.string   "interview_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cleaner_applications", ["applicant_area"], name: "index_cleaner_applications_on_applicant_area"
  add_index "cleaner_applications", ["applicant_email"], name: "index_cleaner_applications_on_applicant_email"
  add_index "cleaner_applications", ["applicant_legal_name"], name: "index_cleaner_applications_on_applicant_legal_name"
  add_index "cleaner_applications", ["interview_time"], name: "index_cleaner_applications_on_interview_time"

  create_table "cleaners", force: true do |t|
    t.string   "email",                        default: "", null: false
    t.string   "encrypted_password",           default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "full_name"
    t.integer  "contact_number"
    t.string   "address"
    t.integer  "cleaners_approval_process_id"
    t.integer  "cleaners_profile_id"
    t.integer  "cleaners_preference_id"
  end

  add_index "cleaners", ["cleaners_approval_process_id"], name: "index_cleaners_on_cleaners_approval_process_id"
  add_index "cleaners", ["cleaners_preference_id"], name: "index_cleaners_on_cleaners_preference_id"
  add_index "cleaners", ["cleaners_profile_id"], name: "index_cleaners_on_cleaners_profile_id"
  add_index "cleaners", ["email"], name: "index_cleaners_on_email", unique: true
  add_index "cleaners", ["full_name"], name: "index_cleaners_on_full_name"
  add_index "cleaners", ["reset_password_token"], name: "index_cleaners_on_reset_password_token", unique: true
  add_index "cleaners", ["username"], name: "index_cleaners_on_username"

  create_table "cleaners_approval_processes", force: true do |t|
    t.string   "approval_status"
    t.string   "approval_date"
    t.string   "approved_by"
    t.boolean  "background_check"
    t.string   "address_proof_photo"
    t.string   "id_copy_photo"
    t.integer  "cleaner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cleaners_approval_processes", ["approval_date"], name: "index_cleaners_approval_processes_on_approval_date"
  add_index "cleaners_approval_processes", ["approval_status"], name: "index_cleaners_approval_processes_on_approval_status"
  add_index "cleaners_approval_processes", ["approved_by"], name: "index_cleaners_approval_processes_on_approved_by"
  add_index "cleaners_approval_processes", ["cleaner_id"], name: "index_cleaners_approval_processes_on_cleaner_id"

  create_table "cleaners_preferences", force: true do |t|
    t.string   "preferred_time"
    t.string   "preferred_area"
    t.string   "pet_preference"
    t.string   "other_preference"
    t.integer  "cleaner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cleaners_preferences", ["cleaner_id"], name: "index_cleaners_preferences_on_cleaner_id"
  add_index "cleaners_preferences", ["pet_preference"], name: "index_cleaners_preferences_on_pet_preference"
  add_index "cleaners_preferences", ["preferred_area"], name: "index_cleaners_preferences_on_preferred_area"
  add_index "cleaners_preferences", ["preferred_time"], name: "index_cleaners_preferences_on_preferred_time"

  create_table "cleaners_profiles", force: true do |t|
    t.string   "nickname"
    t.string   "recent_photo"
    t.string   "description"
    t.string   "experience"
    t.string   "wonder_people_chat"
    t.integer  "cleaner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cleaners_profiles", ["cleaner_id"], name: "index_cleaners_profiles_on_cleaner_id"

end
