class Province < ApplicationRecord
	
	belongs_to :governorate
	has_many :realties
	
end
