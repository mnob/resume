class CreateMattes < ActiveRecord::Migration
  def self.up
    create_table :mattes do |t|
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :mattes
  end
end
