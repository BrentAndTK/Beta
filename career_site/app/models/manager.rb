class Manager < ApplicationRecord
  has_many :jobs
  has_many :jobs, through: :activejobs
end
