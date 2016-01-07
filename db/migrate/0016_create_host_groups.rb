class CreateHostGroups < ActiveRecord::Migration
  def change
    create_table :host_groups do |t|
      t.references :host, index: true, foreign_key: true
      t.references :hgroup, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
