class Deal < ApplicationRecord
  belongs_to :resturant,  class_name: "Resturant", foreign_key: "resturant_id"  
  has_many :deal_details, class_name: "DealDetail", foreign_key: "deal_id"
  has_many :deal_menu_items, through: :deal_details
end
