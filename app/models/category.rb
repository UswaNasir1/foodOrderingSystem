class Category < ApplicationRecord
    belongs_to :resturant,  class_name: "Resturant", foreign_key: "resturant_id"
    has_many :menu_items, class_name: 'MenuItem', foreign_key: 'category_id'
end
