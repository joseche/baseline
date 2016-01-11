class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :schedule
      t.integer :secs_timeout

      t.timestamps null: false
    end
  end
end
