class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :syn_lang
      t.text :content
      t.string :filename
      t.references :account

      t.timestamps null: false
    end
  end
end
