class Schedule < ActiveRecord::Base
  belongs_to :marriage
  validates :location, presence: true
  default_scope { order('date asc')}
end
