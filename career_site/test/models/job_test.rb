require 'test_helper'

class JobTest < ActiveSupport::TestCase

 job = Job.new
 job.invalid?

test "job requires all fields" do
 assert job.errors[:title].any?
 assert job.errors[:description].any?
 assert job.errors[:salary].any?
#test "job has to be posted by manager or admin"
end

  # test "the truth" do
  #   assert true
  # end
end
