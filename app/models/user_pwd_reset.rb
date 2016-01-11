class UserPwdReset < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  validates_uniqueness_of :pwd_reset_key
end
