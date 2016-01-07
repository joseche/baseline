class HGroup < ActiveRecord::Base
  belongs_to :account, dependent: :destroy
  belongs_to :parent, class_name: 'HGroup', foreign_key: 'parent_id'
  has_many :subgroups, class_name: 'HGroup', foreign_key: 'parent_id'
end
