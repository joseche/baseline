class Tag < ActiveRecord::Base
  belongs_to :account, dependent: :destroy
  has_many :hosts, through: :host_tags, dependent: :destroy

  validates_length_of :tag, :minimum => 1, :maximum => 32

end
