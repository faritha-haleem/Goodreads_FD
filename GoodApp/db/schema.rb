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

ActiveRecord::Schema.define(version: 20160706082721) do

  create_table "authors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "auth_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_authors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "authors_id"
    t.integer  "books_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authors_id"], name: "index_book_authors_on_authors_id", using: :btree
    t.index ["books_id"], name: "index_book_authors_on_books_id", using: :btree
  end

  create_table "book_genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "books_id"
    t.integer  "genres_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["books_id"], name: "index_book_genres_on_books_id", using: :btree
    t.index ["genres_id"], name: "index_book_genres_on_genres_id", using: :btree
  end

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.integer  "publishers_id"
    t.string   "isbn"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["publishers_id"], name: "index_books_on_publishers_id", using: :btree
  end

  create_table "genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "genre_id"
    t.string   "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "pub_name"
    t.integer  "pub_year"
    t.text     "pub_address", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "rates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.integer  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "users_id"
    t.integer  "books_id"
    t.text     "review_msg", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["books_id"], name: "index_reviews_on_books_id", using: :btree
    t.index ["users_id"], name: "index_reviews_on_users_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
