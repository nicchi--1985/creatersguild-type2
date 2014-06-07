class GuestMessage < ActiveRecord::Base
  attr_accessible :message, :name
  validates_presence_of :name, :message
end
