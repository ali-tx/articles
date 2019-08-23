class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  validates :title, presence: true,
            length: { minimum: 5 }
  def self.search(search)
    where("title LIKE ? ", "%#{search}%")
  end

end
