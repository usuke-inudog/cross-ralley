class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string      :group_name, null: false
      t.index       :group_name, unique: true
      t.string      :group_type, null: false
      t.timestamps
    end
  end
end
