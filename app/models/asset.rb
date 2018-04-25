class Asset < ApplicationRecord
  belongs_to :realty

	has_attached_file :image,
                    styles: {medium: '200x250!', thumb: '100x100!'},
										:default_url => "path to default image"
										#:default_url => "genImage.jpg"
										#default_url: ->(attachment) { ActionController::Base.helpers.asset_path('genImage.jpg') }
										#:default_url => ActionController::Base.helpers.image_path("genImage.jpg")
										#default_url: ":style/genImage.jpg"
	
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	#validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']
end
