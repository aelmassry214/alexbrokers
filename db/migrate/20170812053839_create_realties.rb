class CreateRealties < ActiveRecord::Migration[5.1]
  def change
    create_table :realties do |t|
      t.string :name
      t.text :details
      t.decimal :price
      t.integer :rooms
      t.float :size
      t.integer :baths
      t.integer :floor
      t.integer :governorate_id
      t.integer :province_id
      t.integer :type_id
      t.integer :category_id
      t.integer :luxury_id

      t.timestamps
    end
  end
end
