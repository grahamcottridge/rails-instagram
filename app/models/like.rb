class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  # user can like only once
  validates :user_id, uniqueness: { scope: :post_id }
end
