class AddPrivateSuperSoldRequiredToRealty < ActiveRecord::Migration[5.1]
  def change
    add_column :realties, :privateRealties, :boolean
    add_column :realties, :superRealties, :boolean
    add_column :realties, :sold, :boolean
    add_column :realties, :requiredRealties, :boolean
  end
end
