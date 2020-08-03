class CreateArtcles < ActiveRecord::Migration[6.0]
  def change
    create_table :artcles do |t|
      t.string        :title
      t.string        :text
      t.string        :image
      t.string        :video
      t.references    :user, foreign_key: true
      t.timestamps
    end
  end
end
