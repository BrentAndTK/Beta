class Manager < ApplicationRecord
  belongs_to :user
  has_many :jobs
  has_many :jobs, through: :activejobs
end
