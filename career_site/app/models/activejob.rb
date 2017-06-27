class Activejob < ApplicationRecord
  belongs_to :manager
  belongs_to :job
end
