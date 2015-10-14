class Category
  include Mongoid::Document
  field :name, type: String
  
  has_many :products


  	validates :name, presence: true
end
