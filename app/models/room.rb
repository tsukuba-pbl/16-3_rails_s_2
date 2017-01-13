class Room < ActiveRecord::Base
  mount_uploader :madori, MadoriUploader
  has_many :uxsers, dependent: :destroy
  belongs_to :article
end
