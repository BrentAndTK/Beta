class Job < ApplicationRecord

  validates :title, :description, :salary,  presence:true

  validates :salary, format: {
    with: ^(((\d{1,3})(,\d{3})*)|(\d+)(\.\d{2})?$
    message: "Must be a valid number"
    }

  validates :description

  belongs_to :manager
  belongs_to :manager, through: :activejobs
end
