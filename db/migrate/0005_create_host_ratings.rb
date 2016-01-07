class CreateHostRatings < ActiveRecord::Migration
  def change
    create_table :host_ratings do |t|
      t.integer :user_rate
      t.integer :bogomips
      t.references :host, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
