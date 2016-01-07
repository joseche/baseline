class JobReport < ActiveRecord::Base
  belongs_to :job, dependent: :destroy
  belongs_to :host, dependent: :destroy

end
