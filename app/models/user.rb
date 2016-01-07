class User < ActiveRecord::Base

  has_one :user_activation, dependent: :destroy
  has_many :user_pwd_resets, dependent: :destroy
  has_many :user_api_stats, dependent: :destroy
  has_many :pending_mails, dependent: :destroy
  has_many :user_invites, dependent: :destroy

end
