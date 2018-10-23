class ImageUploader < BaseUploader
  version :square_md do
    process resize_to_fill: [800, 800]
  end
end
