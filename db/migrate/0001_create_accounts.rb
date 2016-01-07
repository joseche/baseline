class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :type, :default => 'free'
      t.string :name
      t.string :account_key
      t.integer :owner_id

      t.timestamps null: false
    end
    add_foreign_key :accounts, :user, column: :owner_id
  end
end
