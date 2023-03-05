class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :review, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
