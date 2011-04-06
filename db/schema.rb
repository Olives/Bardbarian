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

ActiveRecord::Schema.define(:version => 20110406045830) do

  create_table "abilities", :force => true do |t|
    t.string  "name"
    t.integer "type"
    t.binary  "effect"
    t.boolean "hidden", :default => false
  end

  create_table "abilities_levels", :id => false, :force => true do |t|
    t.integer "ability_id"
    t.integer "level_id"
  end

  create_table "klasses", :force => true do |t|
    t.string  "name"
    t.boolean "base_class"
    t.integer "hit_dice"
    t.string  "alignment_restriction"
    t.integer "skill_ranks"
    t.integer "bab"
    t.integer "fort"
    t.integer "will"
    t.integer "ref"
  end

  create_table "klasses_skills", :id => false, :force => true do |t|
    t.integer "klass_id"
    t.integer "skill_id"
  end

  create_table "levels", :force => true do |t|
    t.integer "klass_id"
    t.integer "rank"
  end

  create_table "skills", :force => true do |t|
    t.integer "name"
    t.integer "modifer"
    t.boolean "trained"
    t.boolean "armour_check"
  end

  create_table "tiers", :force => true do |t|
    t.integer "abilty_id"
    t.integer "rank"
    t.string  "new_ability"
  end

end
