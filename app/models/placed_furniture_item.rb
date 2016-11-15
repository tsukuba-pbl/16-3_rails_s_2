class PlacedFurnitureItem < ActiveRecord::Base
  belongs_to :layout
  belongs_to :furniture_item
end
