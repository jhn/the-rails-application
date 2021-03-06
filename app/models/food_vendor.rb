class FoodVendor 
  include Mongoid::Document

  field :name, type: String
  field :subindustry, type: String
  field :sub_subindustry, type: String
  field :phone, type: String
  field :website, type: String

  validates :name, :presence => true
  validates :subindustry, :presence => true
end
