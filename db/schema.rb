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

ActiveRecord::Schema.define(:version => 20110404092643) do

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.date     "published_at"
    t.integer  "category_id"
    t.integer  "rating",       :default => 0
    t.integer  "completeness", :default => 0
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "marker_color"
  end

  create_table "articles_tags", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "tag_id"
  end

  add_index "articles_tags", ["article_id"], :name => "index_articles_tags_on_article_id"
  add_index "articles_tags", ["tag_id"], :name => "index_articles_tags_on_tag_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "position",   :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  add_index "tags", ["name"], :name => "index_tags_on_name"

end
