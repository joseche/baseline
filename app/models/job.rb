class Job < ActiveRecord::Base

  belongs_to :script, dependent: :destroy
  belongs_to :account, dependent: :destroy
  belongs_to :h_group
  belongs_to :host

  has_many :job_reports, dependent: :destroy

end
