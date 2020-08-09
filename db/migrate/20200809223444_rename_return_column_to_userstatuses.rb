class RenameReturnColumnToUserstatuses < ActiveRecord::Migration[6.0]
  def change
    rename_column :userstatuses, :return, :receive
  end
end
