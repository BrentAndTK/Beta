class Job < ApplicationRecord
  belongs_to :user
  belongs_to :managers


  validates :title, :description, :salary,  presence:true
  validates :salary, format: { with: (/[0-9]{0,3}[\,]?[0-9]{0,3}[\.]?[0-9]{2}/) }
  validates :managers, presence:true
end
