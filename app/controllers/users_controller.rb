class UsersController < ApplicationController
	
	before_action :authenticate_user!, except: [ :show]
  def show
		@user = User.find(params[:id])
		@user_realties = @user.realties.order('created_at DESC').paginate(page: params[:page], per_page: 10)
		@rightAd = Realty.where("righted = True")
		@leftAd = Realty.where("lefted = True")
  end

  def edit
		@rightAd = Realty.where("righted = True")
		@leftAd = Realty.where("lefted = True")
  end

  def update
  	@rightAd = Realty.where("righted = True")
		@leftAd = Realty.where("lefted = True")
	end
	
end

