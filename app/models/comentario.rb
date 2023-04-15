class Comentario < ApplicationRecord
  belongs_to :post
  scope :por_post, lambda {|post|
    where(:post_id => post.id)
  }
  validates_presence_of :nome
end
