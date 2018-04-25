class AddAdsOptionsToRealties < ActiveRecord::Migration[5.1]
  def change
    #add_column :realties, :carouseled, :boolean, null: false, default: false
    add_column :realties, :homed, :boolean, null: false, default: false
    add_column :realties, :awesomed, :boolean, null: false, default: false
    add_column :realties, :greated, :boolean, null: false, default: false
    add_column :realties, :righted, :boolean, null: false, default: false
    add_column :realties, :lefted, :boolean, null: false, default: false
  end

end
