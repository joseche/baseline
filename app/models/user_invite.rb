class UserInvite < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  validates_uniqueness_of :invite_key
end
