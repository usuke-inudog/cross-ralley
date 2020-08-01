class CreateUserstatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :userstatuses do |t|
      t.integer       :rate,               null:false
      t.integer       :footwork,           null:false
      t.integer       :stamina,            null:false
      t.integer       :service,            null:false
      t.integer       :return,             null:false
      t.integer       :volley,             null:false
      t.integer       :forehand,           null:false
      t.integer       :backhand,           null:false
      t.integer       :mental,             null:false
      t.references    :evaluated_user,     null:false, foreign_key: {to_table: :users}
      t.references    :evaluate_user,      null:false, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
