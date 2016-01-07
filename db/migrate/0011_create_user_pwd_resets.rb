class CreateUserPwdResets < ActiveRecord::Migration
  def change
    create_table :user_pwd_resets do |t|
      t.string :pwd_reset_key
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
