class EvaluationHistory < ApplicationRecord
  belongs_to  :evaluated_user, class_name: "User", optional: true, foreign_key: "evaluated_user_id"
  belongs_to  :evaluate_user, class_name: "User", optional: true, foreign_key: "evaluate_user_id"
end
