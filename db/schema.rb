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

ActiveRecord::Schema.define(version: 20171101101825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accountants", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.bigint "company_id"
    t.boolean "employed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_accountants_on_company_id"
  end

  create_table "activities", force: :cascade do |t|
    t.string "code", limit: 10
    t.string "nature", limit: 20
    t.string "sector", limit: 30
    t.decimal "tauxAt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_activities_on_code", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "building", limit: 20
    t.string "cadasRef", limit: 20
    t.integer "cieNum", limit: 2
    t.integer "sodeciNum", limit: 2
    t.string "ilot", limit: 12
    t.string "lot", limit: 12
    t.string "street", limit: 20
    t.integer "postCode", limit: 2
    t.string "quarter", limit: 20
    t.integer "postAgenceNum", limit: 2
    t.integer "streetNum", limit: 2
    t.integer "stageNum", limit: 2
    t.integer "doorNum", limit: 2
    t.bigint "country_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "accountant_id"
    t.index ["accountant_id"], name: "index_addresses_on_accountant_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
    t.index ["country_id"], name: "index_addresses_on_country_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "advantages", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "value"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_advantages_on_employee_id"
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "account_number", limit: 15
    t.string "bank_code", limit: 6
    t.string "agency_code", limit: 6
    t.string "iban_code", limit: 15
    t.string "rib_code", limit: 4
    t.string "owner", limit: 20
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_number"], name: "index_bank_accounts_on_account_number", unique: true
    t.index ["company_id"], name: "index_bank_accounts_on_company_id"
    t.index ["iban_code"], name: "index_bank_accounts_on_iban_code", unique: true
    t.index ["rib_code"], name: "index_bank_accounts_on_rib_code", unique: true
  end

  create_table "charges", force: :cascade do |t|
    t.string "nature", limit: 30
    t.string "name", limit: 30
    t.string "description"
    t.decimal "value"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_charges_on_company_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name", limit: 20
    t.string "district", limit: 20
    t.string "hall", limit: 20
    t.string "population", limit: 3
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "cc", limit: 20
    t.string "cnps", limit: 20
    t.bigint "company_registry_document_id"
    t.string "name", limit: 20
    t.string "socialReason", limit: 20
    t.string "sigle", limit: 6
    t.string "webSite", limit: 16
    t.string "impotCenter", limit: 20
    t.string "impotRegime", limit: 20
    t.datetime "acte_const_at"
    t.string "num_acte_const", limit: 20
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "juridic_form_id"
    t.index ["cc"], name: "index_companies_on_cc", unique: true
    t.index ["cnps"], name: "index_companies_on_cnps", unique: true
    t.index ["company_registry_document_id"], name: "index_companies_on_company_registry_document_id"
    t.index ["country_id"], name: "index_companies_on_country_id"
    t.index ["juridic_form_id"], name: "index_companies_on_juridic_form_id"
    t.index ["name"], name: "index_companies_on_name", unique: true
    t.index ["sigle"], name: "index_companies_on_sigle", unique: true
    t.index ["socialReason"], name: "index_companies_on_socialReason", unique: true
    t.index ["webSite"], name: "index_companies_on_webSite", unique: true
  end

  create_table "company_registry_documents", force: :cascade do |t|
    t.string "document_number", limit: 20
    t.string "name", limit: 30
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_number"], name: "index_company_registry_documents_on_document_number", unique: true
  end

  create_table "contracts", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "company_id"
    t.datetime "start_at"
    t.string "contract_type", limit: 20
    t.datetime "end_at"
    t.string "position", limit: 20
    t.decimal "brute_month_salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_contracts_on_company_id"
    t.index ["employee_id"], name: "index_contracts_on_employee_id"
  end

  create_table "cotisations", force: :cascade do |t|
    t.datetime "periodStart"
    t.datetime "periodEnd"
    t.decimal "declaredAmount"
    t.decimal "payedAmount"
    t.bigint "company_id"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_cotisations_on_company_id"
    t.index ["employee_id"], name: "index_cotisations_on_employee_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "code", limit: 3
    t.string "code2", limit: 2
    t.string "name", limit: 20
    t.string "continent", limit: 20
    t.string "localname", limit: 20
    t.decimal "surfaceArea"
    t.decimal "lifeExpectancy"
    t.decimal "gnp"
    t.decimal "gnpold"
    t.integer "population"
    t.integer "indepYear", limit: 2
    t.string "governmentForm", limit: 20
    t.string "headOfState", limit: 30
    t.string "eCapital", limit: 20
    t.string "pCapital", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_countries_on_code", unique: true
    t.index ["code2"], name: "index_countries_on_code2", unique: true
    t.index ["headOfState"], name: "index_countries_on_headOfState", unique: true
    t.index ["localname"], name: "index_countries_on_localname", unique: true
    t.index ["name"], name: "index_countries_on_name", unique: true
  end

  create_table "employees", force: :cascade do |t|
    t.string "matricule", limit: 20
    t.string "cnps", limit: 20
    t.string "expat", limit: 20
    t.string "lastname", limit: 20
    t.string "firstname", limit: 30
    t.datetime "birthdate"
    t.string "sex", limit: 1
    t.string "nationality", limit: 25
    t.datetime "hireAt"
    t.bigint "company_id"
    t.string "matrimonial_situation", limit: 20
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_employees_on_address_id"
    t.index ["cnps"], name: "index_employees_on_cnps", unique: true
    t.index ["company_id"], name: "index_employees_on_company_id"
    t.index ["matricule"], name: "index_employees_on_matricule", unique: true
  end

  create_table "etablissement_activities", force: :cascade do |t|
    t.bigint "etablissement_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_etablissement_activities_on_activity_id"
    t.index ["etablissement_id"], name: "index_etablissement_activities_on_etablissement_id"
  end

  create_table "etablissements", force: :cascade do |t|
    t.string "code", limit: 20
    t.string "name", limit: 20
    t.bigint "company_id"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_etablissements_on_address_id"
    t.index ["code"], name: "index_etablissements_on_code", unique: true
    t.index ["company_id"], name: "index_etablissements_on_company_id"
  end

  create_table "family_members", force: :cascade do |t|
    t.string "nature"
    t.string "lastname"
    t.string "firstname"
    t.string "birthdate"
    t.string "nationality"
    t.string "matrimonial_situation"
    t.bigint "employee_id"
    t.string "cnps"
    t.string "job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_family_members_on_employee_id"
  end

  create_table "handicaps", force: :cascade do |t|
    t.string "name", limit: 40
    t.string "description"
    t.string "cause"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_handicaps_on_employee_id"
  end

  create_table "identity_cards", force: :cascade do |t|
    t.string "matricule", limit: 20
    t.string "identity_type", limit: 20
    t.datetime "start_at"
    t.datetime "end_at"
    t.bigint "employee_id"
    t.string "authority_full_name", limit: 50
    t.string "authority_title", limit: 30
    t.bigint "country_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_identity_cards_on_city_id"
    t.index ["country_id"], name: "index_identity_cards_on_country_id"
    t.index ["employee_id"], name: "index_identity_cards_on_employee_id"
  end

  create_table "juridic_forms", force: :cascade do |t|
    t.string "name"
    t.string "40"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["40"], name: "index_juridic_forms_on_40", unique: true
    t.index ["name"], name: "index_juridic_forms_on_name", unique: true
  end

  create_table "managers", force: :cascade do |t|
    t.string "lastname", limit: 20
    t.string "firstname", limit: 30
    t.string "nationality", limit: 20
    t.datetime "birthdate"
    t.bigint "company_id"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_managers_on_address_id"
    t.index ["company_id"], name: "index_managers_on_company_id"
  end

  create_table "observations", force: :cascade do |t|
    t.string "author", limit: 30
    t.string "description"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_observations_on_employee_id"
  end

  create_table "profile_roles", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_profile_roles_on_profile_id"
    t.index ["role_id"], name: "index_profile_roles_on_role_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_profiles_on_name", unique: true
  end

  create_table "qualifications", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "description"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_qualifications_on_employee_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_roles_on_name", unique: true
  end

  create_table "user_profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_user_profiles_on_profile_id"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", limit: 20
    t.string "email", limit: 20
    t.string "password_digest"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "last_passwd_reset_at"
    t.boolean "enabled", default: true
    t.string "passwd_reset_token"
    t.datetime "passwd_reset_token_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "accountants", "companies"
  add_foreign_key "addresses", "accountants"
  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "countries"
  add_foreign_key "addresses", "users"
  add_foreign_key "advantages", "employees"
  add_foreign_key "bank_accounts", "companies"
  add_foreign_key "charges", "companies"
  add_foreign_key "cities", "countries"
  add_foreign_key "companies", "company_registry_documents"
  add_foreign_key "companies", "countries"
  add_foreign_key "companies", "juridic_forms"
  add_foreign_key "contracts", "companies"
  add_foreign_key "contracts", "employees"
  add_foreign_key "cotisations", "companies"
  add_foreign_key "cotisations", "employees"
  add_foreign_key "employees", "addresses"
  add_foreign_key "employees", "companies"
  add_foreign_key "etablissement_activities", "activities"
  add_foreign_key "etablissement_activities", "etablissements"
  add_foreign_key "etablissements", "addresses"
  add_foreign_key "etablissements", "companies"
  add_foreign_key "family_members", "employees"
  add_foreign_key "handicaps", "employees"
  add_foreign_key "identity_cards", "cities"
  add_foreign_key "identity_cards", "countries"
  add_foreign_key "identity_cards", "employees"
  add_foreign_key "managers", "addresses"
  add_foreign_key "managers", "companies"
  add_foreign_key "observations", "employees"
  add_foreign_key "profile_roles", "profiles"
  add_foreign_key "profile_roles", "roles"
  add_foreign_key "qualifications", "employees"
  add_foreign_key "user_profiles", "profiles"
  add_foreign_key "user_profiles", "users"
end
