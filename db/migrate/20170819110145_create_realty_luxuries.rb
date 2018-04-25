class CreateRealtyLuxuries < ActiveRecord::Migration[5.1]
  def change
    create_table :realty_luxuries do |t|
      t.references :realty, foreign_key: true
      t.references :luxury, foreign_key: true

      t.timestamps
    end
  end
end
