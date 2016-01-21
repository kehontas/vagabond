class User < ActiveRecord::Base
	has_secure_password
  has_many :posts

   has_attached_file :avatar, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/:medium/missing.jpeg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
