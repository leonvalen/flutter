class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true #validar que esté el usuario
  validates :content, presence: true, length: { maximum: 140 } # los twits son hasta 140 carácteres
  default_scope -> { order(created_at: :desc) } # tweets con nuevos post primero
end
