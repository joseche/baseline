class CreateUserInvites < ActiveRecord::Migration
  def change
    create_table :user_invites do |t|
      t.references :user, index: true, foreign_key: true
      t.string :invite_key
      t.string :email

      t.timestamps null: false
    end
  end
end
