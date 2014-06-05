class Adoption < ActiveRecord::Base
  attr_accessible :comment, :request_id, :suggestion_id
  belongs_to :request
  belongs_to :suggestion
end
