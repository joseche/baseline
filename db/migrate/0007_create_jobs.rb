class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :schedule
      t.integer :secs_imeout

      t.timestamps null: false
    end
  end
end
