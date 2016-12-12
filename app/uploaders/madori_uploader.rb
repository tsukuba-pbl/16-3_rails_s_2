# encoding: utf-8

class MadoriUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

 
  process :tags => ['image']


  version :thumbnail do
    process :resize_to_fit => [100, 100]
  end

  def public_id
    return model.id
  end
  
end
