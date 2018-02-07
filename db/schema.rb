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

ActiveRecord::Schema.define(version: 20180206184601) do

  create_table "apps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "slug"
    t.string "logo"
    t.string "name"
    t.string "description"
    t.boolean "beta", default: false, null: false
    t.string "url"
    t.string "github"
    t.string "android"
    t.string "ios"
    t.string "windows"
    t.string "chrome"
    t.string "todo"
    t.string "wiki"
    t.string "issues"
    t.integer "open_issues"
    t.string "support"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "belongings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "belonger_type"
    t.bigint "belonger_id"
    t.string "belongable_type"
    t.bigint "belongable_id"
    t.string "scope"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["belongable_type", "belongable_id"], name: "index_belongings_on_belongable_type_and_belongable_id"
    t.index ["belonger_type", "belonger_id"], name: "index_belongings_on_belonger_type_and_belonger_id"
  end

  create_table "devices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "owner_type"
    t.bigint "owner_id"
    t.string "onesignal_id"
    t.string "onesignal_permission"
    t.datetime "last_used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["onesignal_id"], name: "index_devices_on_onesignal_id"
    t.index ["owner_type", "owner_id"], name: "index_devices_on_owner_type_and_owner_id"
  end

  create_table "features", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "image"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "content"
    t.string "platform"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repositories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "slug"
    t.string "logo"
    t.string "name"
    t.string "description"
    t.string "language"
    t.string "url"
    t.string "github"
    t.string "demo"
    t.string "rubygems"
    t.string "npm"
    t.string "todo"
    t.string "wiki"
    t.string "issues"
    t.integer "open_issues"
    t.boolean "discontinued", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
