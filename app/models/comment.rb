class Comment < ApplicationRecord
  validates :comment, presence: true

  belongs_to  :artcle
  belongs_to  :user
end
