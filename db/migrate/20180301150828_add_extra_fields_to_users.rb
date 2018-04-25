class AddExtraFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :mob, :string
#		add_column :users, :avatar, :attachment
  end
	
	def self.up
		change_table :users do |t|
			t.attachment :avatar
		end
  end

  def self.down
    remove_attachment :users, :avatar
  end
	
end
