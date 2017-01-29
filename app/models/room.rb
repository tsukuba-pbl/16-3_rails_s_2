class Room < ActiveRecord::Base
  mount_uploader :madori, MadoriUploader
  has_many :uxsers, dependent: :destroy
  has_many :ft_layouts
  
  belongs_to :article
  
  validates :article_id, presence: true
  validates :width, presence: true
  validates :height, presence: true
end
