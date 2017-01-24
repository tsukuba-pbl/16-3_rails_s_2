# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base


  include Cloudinary::CarrierWave

 
  process :tags => ['avatar']

  version :resize_to_fit_300_300 do
   process :resize_to_fit => [300, 300]
  end
  
  version :resize_to_fill_300_300 do
   process :resize_to_fill => [300, 300]
  end
  
  version :resize_to_fit_300_100 do
   process :resize_to_fit => [300, 100]
  end
  
  version :resize_to_fill_300_100 do
   process :resize_to_fill => [300, 100]
  end

  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end

end
