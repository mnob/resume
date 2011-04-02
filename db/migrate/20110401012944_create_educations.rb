class CreateEducations < ActiveRecord::Migration
  def self.up
    create_table :educations do |t|
      t.string :degree
      t.string :title
      t.string :school
      t.date :date_completed
      t.integer :matte_id

      t.timestamps
    end
  end

  def self.down
    drop_table :educations
  end
end
