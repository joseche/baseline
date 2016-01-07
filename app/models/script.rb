class Script < ActiveRecord::Base

  belongs_to :account, dependent: :destroy
  has_many :jobs

end
