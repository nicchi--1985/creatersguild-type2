class Suggestion < ActiveRecord::Base
  attr_accessible :title, :pr_text, :price, :user_id, :request_id, :image, :image_cache
  mount_uploader :image, ImageUploader
  belongs_to :request
  belongs_to :user

  validates_presence_of :title, :pr_text, :price, :user_id, :request_id
end
