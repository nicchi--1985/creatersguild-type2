class Request < ActiveRecord::Base
  attr_accessible :title, :discription, :budget, :user_id, :image, :image_cache
  mount_uploader :image, ImageUploader
end
