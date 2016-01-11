class Host < ActiveRecord::Base
  belongs_to :account, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :job_reports, dependent: :destroy
  has_many :host_ratings, dependent: :destroy
  has_many :tags, through: :host_tags, dependent: :destroy

  validates_uniqueness_of :signature
  validates_length_of :internal_ip, minimum: 1

end
