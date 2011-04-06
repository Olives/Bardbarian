class ClassesLevelsAbilitiesTables < ActiveRecord::Migration

  def self.up
    create_table :klasses do |t|
      t.string :name
      t.boolean :base_class
      t.integer :hit_dice
      t.string :alignment_restriction
      t.integer :skill_ranks
      t.integer :bab
      t.integer :fort
      t.integer :will
      t.integer :ref
    end

    create_table :klasses_skills, :id => false do |t|
      t.integer :klass_id
      t.integer :skill_id
    end

    create_table :skills do |t|
      t.integer :name
      t.integer :modifer
      t.boolean :trained
      t.boolean :armour_check
    end

    create_table :levels do |t|
      t.integer :klass_id
      t.integer :rank
    end

    create_table :abilities_levels, :id => false do |t|
      t.integer :ability_id
      t.integer :level_id
    end


    create_table :abilities do |t|
      t.string :name
      t.integer :special_ability_type
      t.binary :effect
    end

  end

  def self.down
    drop_table :klasses
    drop_table :klasses_skills
    drop_table :skills
    drop_table :levels
    drop_table :abilities
    drop_table :abilities_levels
  end
end
