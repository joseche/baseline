class HostTag < ActiveRecord::Base
  belongs_to :host
  belongs_to :tag
end
