class CreateEmployments < ActiveRecord::Migration
  def self.up
    create_table :employments do |t|
      t.string :title
      t.string :company_name
      t.date :date_started
      t.date :date_ended
      t.text :description
      t.integer :matte_id

      t.timestamps
    end
  end

  def self.down
    drop_table :employments
  end
end
