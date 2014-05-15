class User < ActiveRecord::Base
  attr_accessible :name, :profile, :email
end
