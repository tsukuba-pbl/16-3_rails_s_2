class Room < ActiveRecord::Base
  mount_uploader :madori, MadoriUploader
  belongs_to :article
end
