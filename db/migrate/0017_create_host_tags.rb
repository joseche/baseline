class CreateHostTags < ActiveRecord::Migration
  def change
    create_table :host_tags do |t|
      t.references :host, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
