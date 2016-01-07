class CreateUserActivations < ActiveRecord::Migration
  def change
    create_table :user_activations do |t|
      t.string :auth_key
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
