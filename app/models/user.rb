
class User < ActiveRecord::Base

  has_one :user_activation, dependent: :destroy
  belongs_to :default_account, :foreign_key => 'default_account_id', class_name: 'Account'
  has_many :user_pwd_resets, dependent: :destroy
  has_many :user_api_stats, dependent: :destroy
  has_many :pending_mails, dependent: :destroy
  has_many :user_invites, dependent: :destroy

  validates_uniqueness_of :email
  validates_uniqueness_of :user_key

  before_create :assign_user_key
  after_create :create_default_account

  def create_default_account
    self.default_account = Account.create name: self.email, owner_id: self.id # user_id: self.id
    self.save
  end

  def assign_user_key
    self.user_key = Digest::SHA2.new << ( Time.new.usec * rand(1..100) ).to_s
    self.save
  end

end
