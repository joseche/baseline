class Job < ActiveRecord::Base

  belongs_to :script
  belongs_to :account
  belongs_to :h_group
  belongs_to :host

  has_many :job_reports, dependent: :destroy

end
