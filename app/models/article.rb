class Article < ActiveRecord::Base
  has_many :rooms, dependent: :destroy
end
