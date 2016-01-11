class HostTag < ActiveRecord::Base
  belongs_to :host, dependent: :destroy
  belongs_to :tag, dependent: :destroy
end
