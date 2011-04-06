class TiersTable < ActiveRecord::Migration

  def self.up
    create_table :tiers do |t|
      t.integer :ability_id
      t.integer :rank
      t.string :new_ability
    end
  end

  def self.down
    drop_table :tiers
  end
end
