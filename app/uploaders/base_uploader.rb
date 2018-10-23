class BaseUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  process :fix_exif_rotation #for JPEG rotation by browser
  storage :file

  def store_dir
    "uploads/#{model_name}/#{mounted_as}/#{id_partition}/#{model.id}"
  end

  private

  def model_name
    klass = model.class
    while klass.superclass != ActiveRecord::Base
      klass = klass.superclass
    end
    klass.to_s.underscore
  end

  def id_partition
    case id = model.id
    when Integer
      ("%09d" % id).scan(/\d{3}/).join("/")
    else
      nil
    end
  end

end
