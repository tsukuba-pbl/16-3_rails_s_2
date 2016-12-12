class Room < ActiveRecord::Base
    mount_uploader :madori, MadoriUploader
end
