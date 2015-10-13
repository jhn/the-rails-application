class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :password, type: String
  field :gender, type: String
has_many :products

  validates :name, :presence => true
  validates :gender, :presence => true

end
