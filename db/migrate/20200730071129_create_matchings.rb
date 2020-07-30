class CreateMatchings < ActiveRecord::Migration[6.0]
  def change
    create_table :matchings do |t|
      t.references    :host_user,         null: false, foreign_key: {to_table: :users}
      t.references    :guest_user,        null: false, foreign_key: {to_table: :users}
      t.date          :scheduled_date,    null: false
      t.time          :scheduled_time,    null: false
      t.string        :place
      t.date          :response_deadline, null: false
      t.string        :status,            null: false
      t.timestamps
    end
  end
end
