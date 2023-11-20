class Client < User
  mount_uploader :image, ImageUploader
end
