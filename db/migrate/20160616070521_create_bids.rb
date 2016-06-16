class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :price,        null: false
      t.string  :name
      t.string  :alias,        null: false
      t.string  :phone_number, null: false
      t.string  :email

      t.timestamps null: false
    end
  end
end
