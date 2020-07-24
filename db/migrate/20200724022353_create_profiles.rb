class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string     :image
      t.string     :age,           null: false
      t.string     :gender,        null: false
      t.string     :introduction,  null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
