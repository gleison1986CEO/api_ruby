class Post < ApplicationRecord
  belongs_to :user

  scope :por_usuario, lambda {|user|
    where(:user_id => user.id)
  }
  validates_presence_of :titulo
end
