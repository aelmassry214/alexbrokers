class AddDefaultValuePrivateUserSuperUserToUsers < ActiveRecord::Migration[5.1]
   def up
		change_column_default :users, :privateUser, false
		change_column_default :users, :superUser, false
  end
	
	def down
		change_column_default :users, :privateUser, nil		
		change_column_default :users, :superUser, nil
	end
end
