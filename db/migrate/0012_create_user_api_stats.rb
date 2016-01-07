class CreateUserApiStats < ActiveRecord::Migration
  def change
    create_table :user_api_stats do |t|
      t.references :user, index: true, foreign_key: true
      t.date :date
      t.integer :collect_calls
      t.integer :web_calls

      t.timestamps null: false
    end
  end
end
