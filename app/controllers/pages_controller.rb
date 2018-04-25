class PagesController < ApplicationController
  def home
    @awesomedAd = Realty.where('awesomed=True')
    @greatedAd = Realty.where('greated=True')
    @latestAd = Realty.order('created_at DESC').limit(3)
  end

  def about
		@rightAd = Realty.where("righted = True").where('privateRealties=false')
		@leftAd = Realty.where("lefted = True").where('privateRealties=false')
  end
end
