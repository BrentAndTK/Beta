class Job < ApplicationRecord
  belongs_to :user
  has_many :managers

  validates :title, :description, :salary,  presence:true
=begin
  validates :salary, format: {
    with: (/[0-9]{0,3}[\,]?[0-9]{0,3}[\.]?[0-9]{2}/)
    message: "Must be a valid number"
  }
=end
end
