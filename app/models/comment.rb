class Comment < ApplicationRecord


  belongs_to  :artcle
  belongs_to  :user
end
