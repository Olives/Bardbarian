class HiddenAbilities < ActiveRecord::Migration

  def self.up
    change_table :abilities do |t|
      t.boolean :hidden, :default => false
    end
  end

  def self.down
    change_table :abilities do |t|
      t.remove :hidden
    end
  end
end
