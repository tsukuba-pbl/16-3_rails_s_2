class Room < ActiveRecord::Base
  mount_uploader :madori, MadoriUploader
  has_many :uxsers, dependent: :destroy
  has_many :ft_layouts
  belongs_to :article
end
