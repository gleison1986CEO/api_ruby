class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include DeviseTokenAuth::Concerns::User
  has_many :posts, dependent: :destroy
  has_many :comentarios, dependent: :destroy
end
