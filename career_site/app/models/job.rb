class Job < ApplicationRecord
  belongs_to :manager
  belongs_to :manager, through: :activejobs
end
