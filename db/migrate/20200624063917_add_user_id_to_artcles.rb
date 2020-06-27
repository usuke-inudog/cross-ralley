class AddUserIdToArtcles < ActiveRecord::Migration[6.0]
  def change
    add_column :artcles, :user_id, :integer
  end
end
