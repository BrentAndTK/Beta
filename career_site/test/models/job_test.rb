require 'test_helper'

class JobTest < ActiveSupport::TestCase

 job = Job.new
 job.invalid?

test "job requires all fields" do
 assert job.errors[:title].any?
 assert job.errors[:description].any?
 assert job.errors[:salary].any?
end

 test "job has to be posted by manager or admin" do
 ##some code to test user login
 end


end
