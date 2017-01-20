class FtLayout < ActiveRecord::Base
  has_many :ft_items
  belongs_to :room
end
