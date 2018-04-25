ActiveAdmin.register Realty do
	
	permit_params :name, :details, :price, :rooms, :size, :baths, :floor, :governorate_id, :province_id, :type_id, :category_id, :luxury_id, :user_id,  :carouseled, :homed, :awesomed, :greated, :righted, :lefted, role_ids:[]
	
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    id_column
    column :name
    column :type
    column :category
    column :governorate
    column :province
    column :size
    column :price
    column :carouseled
    column :homed
    column :awesomed
    column :greated
    column :righted
    column :lefted
    actions
  end

end
