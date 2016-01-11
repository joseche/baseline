class HostGroup < ActiveRecord::Base
  belongs_to :host, dependent: :destroy
  belongs_to :hgroup, dependent: :destroy
end
