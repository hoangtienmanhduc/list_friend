
ActiveRecord::Schema[8.0].define(version: 2025_02_24_133331) do
  create_table "friends", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.integer "user_id"
    t.index ["user_id"], name: "index_friends_on_user_id"
    t.index ["users_id"], name: "index_friends_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
