require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "validates user credintials"

  validates :uid, :name, :nickname, presence:true
end
