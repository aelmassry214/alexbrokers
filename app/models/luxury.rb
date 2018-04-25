class Luxury < ApplicationRecord
	
	has_many :realty_luxuries, dependent: :destroy #, inverse_of: :luxury
	has_many :realties, through: :realty_luxuries#, source: :realty
	
	#accepts_nested_attributes_for :realty_luxuries
end
