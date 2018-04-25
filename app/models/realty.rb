class Realty < ApplicationRecord

	belongs_to :governorate
	belongs_to :province
	#belongs_to :luxury
	belongs_to :type
	belongs_to :category
	belongs_to :user
	
	has_many :assets, dependent: :destroy
	
	has_many :realty_luxuries, dependent: :destroy #, inverse_of: :realty
	has_many :luxuries, through: :realty_luxuries
	
	accepts_nested_attributes_for :assets, :reject_if => lambda { |t| t['image'].nil? }, allow_destroy: true
	


end
