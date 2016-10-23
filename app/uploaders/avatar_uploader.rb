# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base


  include Cloudinary::CarrierWave

 
  process :tags => ['avatar']

  version :standard do
   
  end

  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end

  def public_id
    return model.id
  end

end
