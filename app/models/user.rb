class User 
  include Mongoid::Document
  field :name, type: String 
  field :email, type: String
  field :password, type: String
  field :gender, type: String

  validates :name, :email, :gender, presence: true

  protected
  	def ensure_login_has_a_value
  		if name.nil?
  			self.name = email unless email.black?
  		end
  	end
end
