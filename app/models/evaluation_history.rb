class EvaluationHistory < ApplicationRecord
  validates :footwork, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :stamina, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :service, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :return, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :volley, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :forehand, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :backhand, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :mental, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validates :evaluated_user_id, presence: true


  belongs_to  :evaluated_user, class_name: "User", optional: true, foreign_key: "evaluated_user_id"
  belongs_to  :evaluate_user, class_name: "User", optional: true, foreign_key: "evaluate_user_id"
end
