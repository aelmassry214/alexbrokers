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

ActiveRecord::Schema.define(version: 20180320192415) do

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "realty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["realty_id"], name: "index_assets_on_realty_id"
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "governorates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "luxuries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pma__bookmark", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Bookmarks" do |t|
    t.string "dbase", default: "", null: false
    t.string "user", default: "", null: false
    t.string "label", default: "", null: false, collation: "utf8_general_ci"
    t.text "query", null: false
  end

  create_table "pma__central_columns", primary_key: ["db_name", "col_name"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Central list of columns" do |t|
    t.string "db_name", limit: 64, null: false
    t.string "col_name", limit: 64, null: false
    t.string "col_type", limit: 64, null: false
    t.text "col_length"
    t.string "col_collation", limit: 64, null: false
    t.boolean "col_isNull", null: false
    t.string "col_extra", default: ""
    t.text "col_default"
  end

  create_table "pma__column_info", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Column information for phpMyAdmin" do |t|
    t.string "db_name", limit: 64, default: "", null: false
    t.string "table_name", limit: 64, default: "", null: false
    t.string "column_name", limit: 64, default: "", null: false
    t.string "comment", default: "", null: false, collation: "utf8_general_ci"
    t.string "mimetype", default: "", null: false, collation: "utf8_general_ci"
    t.string "transformation", default: "", null: false
    t.string "transformation_options", default: "", null: false
    t.string "input_transformation", default: "", null: false
    t.string "input_transformation_options", default: "", null: false
    t.index ["db_name", "table_name", "column_name"], name: "db_name", unique: true
  end

  create_table "pma__designer_settings", primary_key: "username", id: :string, limit: 64, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Settings related to Designer" do |t|
    t.text "settings_data", null: false
  end

  create_table "pma__export_templates", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Saved export templates" do |t|
    t.string "username", limit: 64, null: false
    t.string "export_type", limit: 10, null: false
    t.string "template_name", limit: 64, null: false
    t.text "template_data", null: false
    t.index ["username", "export_type", "template_name"], name: "u_user_type_template", unique: true
  end

  create_table "pma__favorite", primary_key: "username", id: :string, limit: 64, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Favorite tables" do |t|
    t.text "tables", null: false
  end

  create_table "pma__history", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "SQL history for phpMyAdmin" do |t|
    t.string "username", limit: 64, default: "", null: false
    t.string "db", limit: 64, default: "", null: false
    t.string "table", limit: 64, default: "", null: false
    t.timestamp "timevalue", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.text "sqlquery", null: false
    t.index ["username", "db", "table", "timevalue"], name: "username"
  end

  create_table "pma__navigationhiding", primary_key: ["username", "item_name", "item_type", "db_name", "table_name"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Hidden items of navigation tree" do |t|
    t.string "username", limit: 64, null: false
    t.string "item_name", limit: 64, null: false
    t.string "item_type", limit: 64, null: false
    t.string "db_name", limit: 64, null: false
    t.string "table_name", limit: 64, null: false
  end

  create_table "pma__pdf_pages", primary_key: "page_nr", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "PDF relation pages for phpMyAdmin" do |t|
    t.string "db_name", limit: 64, default: "", null: false
    t.string "page_descr", limit: 50, default: "", null: false, collation: "utf8_general_ci"
    t.index ["db_name"], name: "db_name"
  end

  create_table "pma__recent", primary_key: "username", id: :string, limit: 64, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Recently accessed tables" do |t|
    t.text "tables", null: false
  end

  create_table "pma__relation", primary_key: ["master_db", "master_table", "master_field"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Relation table" do |t|
    t.string "master_db", limit: 64, default: "", null: false
    t.string "master_table", limit: 64, default: "", null: false
    t.string "master_field", limit: 64, default: "", null: false
    t.string "foreign_db", limit: 64, default: "", null: false
    t.string "foreign_table", limit: 64, default: "", null: false
    t.string "foreign_field", limit: 64, default: "", null: false
    t.index ["foreign_db", "foreign_table"], name: "foreign_field"
  end

  create_table "pma__savedsearches", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Saved searches" do |t|
    t.string "username", limit: 64, default: "", null: false
    t.string "db_name", limit: 64, default: "", null: false
    t.string "search_name", limit: 64, default: "", null: false
    t.text "search_data", null: false
    t.index ["username", "db_name", "search_name"], name: "u_savedsearches_username_dbname", unique: true
  end

  create_table "pma__table_coords", primary_key: ["db_name", "table_name", "pdf_page_number"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Table coordinates for phpMyAdmin PDF output" do |t|
    t.string "db_name", limit: 64, default: "", null: false
    t.string "table_name", limit: 64, default: "", null: false
    t.integer "pdf_page_number", default: 0, null: false
    t.float "x", limit: 24, default: 0.0, null: false, unsigned: true
    t.float "y", limit: 24, default: 0.0, null: false, unsigned: true
  end

  create_table "pma__table_info", primary_key: ["db_name", "table_name"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Table information for phpMyAdmin" do |t|
    t.string "db_name", limit: 64, default: "", null: false
    t.string "table_name", limit: 64, default: "", null: false
    t.string "display_field", limit: 64, default: "", null: false
  end

  create_table "pma__table_uiprefs", primary_key: ["username", "db_name", "table_name"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Tables' UI preferences" do |t|
    t.string "username", limit: 64, null: false
    t.string "db_name", limit: 64, null: false
    t.string "table_name", limit: 64, null: false
    t.text "prefs", null: false
    t.timestamp "last_update", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "pma__tracking", primary_key: ["db_name", "table_name", "version"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Database changes tracking for phpMyAdmin" do |t|
    t.string "db_name", limit: 64, null: false
    t.string "table_name", limit: 64, null: false
    t.integer "version", null: false, unsigned: true
    t.datetime "date_created", null: false
    t.datetime "date_updated", null: false
    t.text "schema_snapshot", null: false
    t.text "schema_sql"
    t.text "data_sql", limit: 4294967295
    t.string "tracking", limit: 188
    t.integer "tracking_active", default: 1, null: false, unsigned: true
  end

  create_table "pma__userconfig", primary_key: "username", id: :string, limit: 64, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "User preferences storage for phpMyAdmin" do |t|
    t.timestamp "timevalue", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.text "config_data", null: false
  end

  create_table "pma__usergroups", primary_key: ["usergroup", "tab", "allowed"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "User groups with configured menu items" do |t|
    t.string "usergroup", limit: 64, null: false
    t.string "tab", limit: 64, null: false
    t.string "allowed", limit: 1, default: "N", null: false
  end

  create_table "pma__users", primary_key: ["username", "usergroup"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin", comment: "Users and their assignments to user groups" do |t|
    t.string "username", limit: 64, null: false
    t.string "usergroup", limit: 64, null: false
  end

  create_table "provinces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "governorate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "realties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "details"
    t.decimal "price", precision: 10
    t.integer "rooms"
    t.float "size", limit: 24
    t.integer "baths"
    t.integer "floor"
    t.integer "governorate_id"
    t.integer "province_id"
    t.integer "type_id"
    t.integer "category_id"
    t.integer "luxury_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.boolean "carouseled", default: false, null: false
    t.boolean "homed", default: false, null: false
    t.boolean "awesomed", default: false, null: false
    t.boolean "greated", default: false, null: false
    t.boolean "righted", default: false, null: false
    t.boolean "lefted", default: false, null: false
    t.boolean "privateRealties", default: false
    t.boolean "superRealties", default: false
    t.boolean "sold", default: false
    t.boolean "requiredRealties", default: false
  end

  create_table "realty_luxuries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "realty_id"
    t.bigint "luxury_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["luxury_id"], name: "index_realty_luxuries_on_luxury_id"
    t.index ["realty_id"], name: "index_realty_luxuries_on_realty_id"
  end

  create_table "types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.string "username"
    t.string "mob"
    t.boolean "privateUser", default: false
    t.boolean "superUser", default: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assets", "realties", on_delete: :cascade
  add_foreign_key "realty_luxuries", "luxuries"
  add_foreign_key "realty_luxuries", "realties"
end
