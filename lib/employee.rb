class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end


# ["id",
#  "store_id",
#  "first_name",
#  "last_name",
#  "hourly_rate",
#  "created_at",
#  "updated_at"]