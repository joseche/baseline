class Tag < ActiveRecord::Base
  belongs_to :account, dependent: :destroy
  has_many :hosts, through: :host_tags
end
