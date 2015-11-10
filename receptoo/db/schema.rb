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

ActiveRecord::Schema.define(version: 20151110142936) do

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "recipe_id"
    t.string   "user"
    t.text     "comment_text"
  end

  add_index "comments", ["recipe_id"], name: "index_comments_on_recipe_id"

  create_table "ingredients", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.integer  "ingredient_type"
  end

  create_table "recipes", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "title"
    t.text     "description"
    t.integer  "category"
    t.string   "creator_name"
    t.integer  "duration"
    t.integer  "rating"
    t.integer  "difficulty"
  end

  create_table "recipes_and_ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
  end

  add_index "recipes_and_ingredients", ["ingredient_id"], name: "index_recipes_and_ingredients_on_ingredient_id"
  add_index "recipes_and_ingredients", ["recipe_id"], name: "index_recipes_and_ingredients_on_recipe_id"

end
