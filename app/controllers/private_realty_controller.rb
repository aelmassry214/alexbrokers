class PrivateRealtyController < ApplicationController
  
	before_action :authenticate_user!  
	
	def new
		@privateRealty = current_user.realties.build
		5.times {@privateRealty.assets.build}
		@rightAd = Realty.where("righted = True")
		@leftAd = Realty.where("lefted = True")
  end

  def create
		@privateRealty = current_user.realties.build(private_realty_params)
		if @privateRealty.save #(validate: false)
			flash[:notice] = "تم اضافة الاعلان"
			redirect_to private_realty_index_path
		else
			redirect_to private_realty_new_path
		end
  end

  def edit
		if user_signed_in?
			if Realty.find(params[:id]).user == current_user 
				@privateRealty = Realty.find(params[:id])
				5.times {@privateRealty.assets.build}
			else 
				flash[:notice] = "يجب ان تكون صاحب الاعلان لتتمكن من تعديله"
				redirect_to realties_index_path
			end
		else
			redirect_to new_user_session_path
			flash[:notice] = @privateRealty.errors.full_messages
		end
		@rightAd = Realty.where("righted = True")
		@leftAd = Realty.where("lefted = True")
  end

  def update
		@privateRealty = Realty.find(params[:id])
		if @privateRealty.update_attributes(private_realty_params)
			flash[:notice] = "تم تعديل الاعلان"
			redirect_to private_realty_index_path
		else
			redirect_to private_realty_edit_path
		end
  end

  def index
		if current_user.privateUser?
			if params[:type_id]
				@privateRealtyOfType = Realty.where(:type_id => params[:type_id]).where('privateRealties = true') 
				@privateRealtyTitle = 'الـ' + Type.where(:id => params[:type_id]).first.name
				@q = @privateRealtyOfType.search(params[:q])
				@privateRealties = @q.result(distinct: true).page(params[:page]).per_page(5)
			else
				@privateRealty = Realty.where('privateRealties = true') 
				@privateRealtyTitle = 'كل العقارات الخاصة'
				@q= @privateRealty.search(params[:q])
				@privateRealties= @q.result(distinct: true).page(params[:page]).per_page(5)
			end
		else
			redirect_to realties_index_path
		end
		
		@rightAd = Realty.where("righted = True")
		@leftAd = Realty.where("lefted = True")
  end

  def show
		@privateRealty = Realty.find(params[:id])
		@rightAd = Realty.where("righted = True")
		@leftAd = Realty.where("lefted = True")
  end

  def destroy
		@privateRealty = Realty.find(params[:id])
    @privateRealty.destroy
    redirect_to private_realty_index_path, notice: "تم حذف الاعلان"
  end
	
	private
	
	def private_realty_params
		params.require(:realty).permit(:name, :details, :price, :rooms, :size, :baths, :floor, :realty_id, :governorate_id, :province_id, :type_id, :category_id, :luxury_id, :user_id, luxury_ids: [], assets_attributes: [:id, :image, :_destroy]  )
	end
	
end
