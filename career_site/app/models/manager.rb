class Manager < ApplicationRecord
  belongs_to :user
  has_many :activejobs
  has_many :jobs, through: :activejobs
end
