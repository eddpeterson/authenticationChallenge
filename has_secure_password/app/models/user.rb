class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation # now these fields cannot be set by mass assignment
  has_secure_password
  validates_presence_of :password, :on => :create
end