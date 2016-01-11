class HostRating < ActiveRecord::Base
  belongs_to :host, dependent: :destroy

  validates_numericality_of :user_rate, :greater_than_or_equal_to => 0
  validates_numericality_of :bogomips,  :greater_than_or_equal_to => 0

end
