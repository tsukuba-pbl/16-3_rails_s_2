class Uxser < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :room
  
  validates :zahyo_x, presence: true
  validates :zahyo_y, presence: true
  validates :zahyo_z, presence: true
  validates :room_id, presence: true
  validates :room_depth, presence: true
  validates :room_width, presence: true
  validates :offset, presence: true

  validate :exsitence_of_room_id

  private
    def exsitence_of_room_id
      errors.add(:room_id, "指定されたidの物件がない") unless Room.pluck(:id).include?(room_id)
    end
end
