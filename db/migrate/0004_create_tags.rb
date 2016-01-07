class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.references :account, index: true, foreign_key: true
      t.boolean :user_created, default: false

      t.timestamps null: false
    end
  end
end
