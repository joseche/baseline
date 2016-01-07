class HostGroup < ActiveRecord::Base
  belongs_to :host
  belongs_to :hgroup
end
