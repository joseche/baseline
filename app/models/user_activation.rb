class UserActivation < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  validates_uniqueness_of :auth_key
end
