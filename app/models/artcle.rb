class Artcle < ApplicationRecord
  validates :text, presence: true

  belongs_to  :user
  has_many    :comments
  has_many    :likes

  mount_uploader  :image, ImageUploader
  
  def self.search(search)
    return Artcle.all unless search
    Artcle.where('text LIKE(?)',"%#{search}%")
  end
end
