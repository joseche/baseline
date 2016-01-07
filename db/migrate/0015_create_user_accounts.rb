class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.references :user, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true
      t.string :role, default: 'admin'

      t.timestamps null: false
    end
  end
end
