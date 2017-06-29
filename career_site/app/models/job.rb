class Job < ApplicationRecord

  has_many :activejobs
  has_many :managers, through: :activejobs

  validates :title, :description, :salary,  presence:true
  validates :salary, format: {
    with: (/[0-9]{0,3}[\,]?[0-9]{0,3}[\.]?[0-9]{2}/) 
    message: "Must be a valid number"
    }
  
  
  belongs_to :manager
  belongs_to :manager, through: :activejobs

end
