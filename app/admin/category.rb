ActiveAdmin.register Category do
	
	permit_params :name
	
	# menu parent: 'الفئة'
  # menu label: proc{ I18n.t "الفئة" }
	
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

	
	
end
