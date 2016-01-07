class HostRating < ActiveRecord::Base
  belongs_to :host, dependent: :destroy
end
