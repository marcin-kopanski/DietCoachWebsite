class Blogs < ActiveRecord::Migration[5.1]
  def change
    create_table "blogs", force: :cascade do |t|
      t.string "title"
      t.text "body"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "slug"
      t.integer "status", default: 0
      t.index ["slug"], name: "index_blogs_on_slug", unique: true
    end

    create_table "comments", force: :cascade do |t|
      t.text "content"
      t.bigint "user_id"
      t.bigint "blog_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["blog_id"], name: "index_comments_on_blog_id"
      t.index ["user_id"], name: "index_comments_on_user_id"
    end

    create_table "friendly_id_slugs", force: :cascade do |t|
      t.string "slug", null: false
      t.integer "sluggable_id", null: false
      t.string "sluggable_type", limit: 50
      t.string "scope"
      t.datetime "created_at"
      t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
      t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
      t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
      t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
    end

    add_foreign_key "comments", "blogs"
    add_foreign_key "comments", "users"
  end
end
