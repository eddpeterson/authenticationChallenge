class Post < ActiveRecord::Base
  attr_accessible :name, :content, :user_id
  belongs_to :user
end
