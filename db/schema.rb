ActiveRecord::Schema.define(version: 20170628231042) do

  create_table "points", force: :cascade do |t|
    t.integer "pointsNum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "program_id"
    t.index ["program_id"], name: "index_points_on_program_id"
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "company"
    t.integer "pointsValue"
    t.string "pointsRedeemValue"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
