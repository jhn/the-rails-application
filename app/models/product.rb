class Product
  include Mongoid::Document
  field :brand, type: String
  field :price, type: String
  field :best_selling, type: String
	belongs_to:User
end
