class FurnitureItem < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    mount_uploader :icon, IconUploader
end
