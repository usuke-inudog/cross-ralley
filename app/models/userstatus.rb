class Userstatus < ApplicationRecord
  validates :footwork, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :stamina, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :service, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :receive, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :volley, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :forehand, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :backhand, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :mental, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}

  belongs_to :user
end
