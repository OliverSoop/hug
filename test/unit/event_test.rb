require 'test_helper'

class EventTest < ActiveSupport::TestCase
	test "That event works correctly" do
		event = Event.new
		event.info = "INFO"
		assert "INFO" == event.info
		event.name ="NAME"
		assert "NAME" == event.name
		now = DateTime.now
		event.time = now
		assert event.time == now
		event.created = now
		assert event.created == now
	end
  # test "the truth" do
  #   assert true
  # end
end
