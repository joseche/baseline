require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "new user creates account" do
    usr = users(:jose)
    usr.create_default_account
    assert_not_nil (usr.default_account)
  end

  test "new user gets key" do
    usr = users(:jose)
    usr.assign_user_key
    assert_not_nil (usr.assign_user_key)
  end

end
