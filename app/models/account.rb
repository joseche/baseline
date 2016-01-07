class Account < ActiveRecord::Base

  belongs_to :user, foreign_key: 'owner_id'

  has_many :hosts, dependent: :destroy
  has_many :users, through: :user_accounts
  has_many :h_groups, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :scripts, dependent: :destroy

end
