class HGroup < ActiveRecord::Base
  belongs_to :account, dependent: :destroy
  has_one :h_group, foreign_key: 'parent_id'
end
