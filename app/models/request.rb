class Request < ActiveRecord::Base
  attr_accessible :title, :discription, :budget, :user_id, :image, :image_cache
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :suggestions

  validates_presence_of :title, :user_id
end
