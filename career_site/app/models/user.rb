class User < ApplicationRecord
  validates :uid, uniqueness: true
  has_many :managers
  has_many :jobs
end
