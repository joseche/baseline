class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :user_key
      t.boolean :active
      t.integer :default_account_id

      t.timestamps null: false
    end
    add_foreign_key :users, :account, column: :default_account_id
  end
end
