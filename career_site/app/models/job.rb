class Job < ApplicationRecord
  has_many :activejobs
  has_many :managers, through: :activejobs
end
