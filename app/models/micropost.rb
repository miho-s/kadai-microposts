class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_by, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :fav_by, through: :favorite_by, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
  

end


