class CreateTalents < ActiveRecord::Migration
  def self.up
    create_table :talents do |t|
      t.string :name
      t.integer :matte_id

      t.timestamps
    end
  end

  def self.down
    drop_table :talents
  end
end
