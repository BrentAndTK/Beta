require 'test_helper'

class ManagerTest < ActiveSupport::TestCase

test "manager must have valid credintials" do
validates :name, :title, presence:true
end

end
