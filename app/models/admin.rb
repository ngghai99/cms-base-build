class Admin < User
  mount_uploader :image, ImageUploader
end
