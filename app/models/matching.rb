class Matching < ApplicationRecord
  belongs_to  :host_user, class_name: "User", optional: true, foreign_key: "host_user_id"
  belongs_to  :guest_user, class_name: "User", optional: true, foreign_key: "guest_user_id"

  validates :host_user,         presence: true
  validates :guest_user,        presence: true
  validates :match_type,              presence: true
  validates :scheduled_date,    presence: true
  validates :scheduled_time,    presence: true
  validates :response_deadline, presence: true
  validates :status,            presence: true
end
