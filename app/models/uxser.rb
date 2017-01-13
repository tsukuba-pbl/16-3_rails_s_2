class Uxser < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :room
end
