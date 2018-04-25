class RealtiesController < ApplicationController
  
	before_action :authenticate_user!, except: [:index, :show]  
	
	def new
		@realty = current_user.realties.build
		5.times {@realty.assets.build}
		@rightAd = Realty.where("righted = True").where('privateRealties=false')
		@leftAd = Realty.where("lefted = True").where('privateRealties=false')
  end

  def create
		@realty = current_user.realties.build(realty_params)
		if @realty.save #(validate: false)
			flash[:notice] = "تم اضافة الاعلان"
			redirect_to realties_index_path
		else
			redirect_to realties_new_path
		end
  end

  def edit
		if user_signed_in?
			if Realty.find(params[:id]).user == current_user 
				@realty = Realty.find(params[:id])
				5.times {@realty.assets.build}
			else 
				flash[:notice] = "يجب ان تكون صاحب الاعلان لتتمكن من تعديله"
				redirect_to realties_index_path
			end
		else
			redirect_to new_user_session_path
			flash[:notice] = @realty.errors.full_messages
		end
		@rightAd = Realty.where("righted = True").where('privateRealties=false')
		@leftAd = Realty.where("lefted = True").where('privateRealties=false')
  end

  def update
		@realty = Realty.find(params[:id])
		if @realty.update_attributes(realty_params)
			flash[:notice] = "تم تعديل الاعلان"
			redirect_to realties_index_path
		else
			redirect_to realties_edit_path
		end
  end

  def index
		
		if params[:type_id]
			@realtyOfType = Realty.where(:type_id => params[:type_id]).where('privateRealties=false')
			@realtyTitle = 'الـ' + Type.where(:id => params[:type_id]).first.name
			@q = @realtyOfType.search(params[:q])
    	@realties = @q.result(distinct: true).page(params[:page]).per_page(5)
    else
			@realtyTitle = 'كل العقارات'
			@q= Realty.where('privateRealties=false').search(params[:q])
			@realties= @q.result(distinct: true).page(params[:page]).per_page(5)
		end
		
		@rightAd = Realty.where("righted = True").where('privateRealties=false')
		@leftAd = Realty.where("lefted = True").where('privateRealties=false')
  end

  def show
		@realty = Realty.find(params[:id])
		@rightAd = Realty.where("righted = True").where('privateRealties=false')
		@leftAd = Realty.where("lefted = True").where('privateRealties=false')
  end

  def destroy
		@realty = Realty.find(params[:id])
    @realty.destroy
    redirect_to realties_index_path, notice: "تم حذف الاعلان"
  end
	
	private
	
	def realty_params
		params.require(:realty).permit(:name, :privateRealties, :details, :price, :rooms, :size, :baths, :floor, :realty_id, :governorate_id, :province_id, :type_id, :category_id, :luxury_id, :user_id, luxury_ids: [], assets_attributes: [:id, :image, :_destroy]  )
	end
	
	
end
