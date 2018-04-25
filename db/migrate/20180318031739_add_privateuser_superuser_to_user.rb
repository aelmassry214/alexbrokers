class AddPrivateuserSuperuserToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :privateUser, :boolean
    add_column :users, :superUser, :boolean
  end
end
