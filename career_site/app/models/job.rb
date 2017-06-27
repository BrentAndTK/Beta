class Job < ApplicationRecord

  validates title: description: 

  belongs_to :manager
  belongs_to :manager, through: :activejobs
end
