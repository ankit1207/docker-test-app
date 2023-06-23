require "test_helper"

class DemoTest < ActiveSupport::TestCase
  # passing test
  test "should check for correct sum" do
    assert_equal Demo.sum(10,20), 30
    end

  test "should check for incorrect sum" do
    assert_not_equal Demo.sum(10,20), 40
  end

  #should fail
  test "should check the correct sum again" do
    assert_equal Demo.sum(20,20), 30
  end
end
