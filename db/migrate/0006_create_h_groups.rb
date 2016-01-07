class CreateHGroups < ActiveRecord::Migration
  def change
    create_table :h_groups do |t|
      t.string :name


      t.timestamps null: false
    end
  end
end
