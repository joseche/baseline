class Account < ActiveRecord::Base

  belongs_to :user, foreign_key: 'owner_id'

  has_many :hosts, dependent: :destroy
  has_many :users, through: :user_accounts
  has_many :h_groups, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :scripts, dependent: :destroy

  before_create :create_account_key

  def create_account_key
    self.account_key = Digest::SHA2.new << ( Time.new.usec * rand(1..100) ).to_s
  end

end
