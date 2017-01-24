# encoding: utf-8

class IconUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

 
  process :tags => ['icon']

  version :thumbnail2 do
    process :resize_to_fit => [50, 50]
  end



end
