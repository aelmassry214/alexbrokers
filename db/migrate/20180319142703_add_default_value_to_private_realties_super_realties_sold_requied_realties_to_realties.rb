class AddDefaultValueToPrivateRealtiesSuperRealtiesSoldRequiedRealtiesToRealties < ActiveRecord::Migration[5.1]
  def up
		change_column_default :realties, :privateRealties, false
		change_column_default :realties, :superRealties, false
		change_column_default :realties, :sold, false
		change_column_default :realties, :requiredRealties, false
  end
	
	def down
		change_column_default :realties, :requiredRealties, nil		
		change_column_default :realties, :sold, nil
		change_column_default :realties, :superRealties, nil
		change_column_default :realties, :privateRealties, nil
	end
	
end
