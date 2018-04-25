class Governorate < ApplicationRecord
	has_many :provinces
	has_many :realties
end
