class RealtyLuxury < ApplicationRecord
  belongs_to :realty#, inverse_of: :realty_luxuries
  belongs_to :luxury#, inverse_of: :realty_luxuries
	
	#accepts_nested_attributes_for :luxury
    
end
