class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :timeoutable
	
	has_many :realties
	
#	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }
#	#, :default_url => "/images/:style/missing.png"
#  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	
	def display_name
 		return self.email
	end
	
#  def password_required?
#    if respond_to?(:reset_password_token)
#      return true if reset_password_token.present?
#    end
#    return true if new_record?
#    password.present? || password_confirmation.present?
#  end
	
def password_required?
  new_record? || password.present? || password_confirmation.present?
end
	
end
