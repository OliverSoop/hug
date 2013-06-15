require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "Event creation without name" do
		event = Event.new(:info => "Info")
    assert_equal false, event.valid?
  end

  test "Event creation without info" do
		event = Event.new(:name => "Name")
    assert_equal false, event.valid?
  end

  test "Event creation with info and name length less than 1" do
		event = Event.new(:info => "", :name => "")
    assert_equal false, event.valid?
  end

  test "Event creation without problems" do
		event = Event.new(:info => "Info", :name => "Name")
    assert_equal true, event.valid?
  end
end
