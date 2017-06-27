require 'test_helper'

class JobTest < ActiveSupport::TestCase

 job = Job.new
 job.invalid?
test "job requires all fields"
 assert job.errors[:title].any?
 assert job.errors[:description].any?
 assert job.errors[:salary].any?


  # test "the truth" do
  #   assert true
  # end
end
