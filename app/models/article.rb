class Article < ActiveRecord::Base
  has_many :rooms, dependent: :destroy
  validates :name, presence: true
end
