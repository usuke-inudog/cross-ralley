class RenameReturnColumnToEvaluationHistories < ActiveRecord::Migration[6.0]
  def change
    rename_column :evaluation_histories, :return, :receive
  end
end
