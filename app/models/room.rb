class Room < ActiveRecord::Base
  mount_uploader :madori, MadoriUploader
  belongs_to :building
  has_many :uxsers, dependent: :destroy
end
