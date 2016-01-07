class CreateJobReports < ActiveRecord::Migration
  def change
    create_table :job_reports do |t|
      t.references :job, index: true, foreign_key: true
      t.integer :status_code
      t.text :output
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
