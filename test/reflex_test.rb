require_relative "test_helper"

class StimulusReflex::ReflexTest < ActionCable::Channel::TestCase
  tests StimulusReflex::Channel

  setup do
    stub_connection(session_id: SecureRandom.uuid)
    def connection.env
      @env ||= {}
    end
    @reflex = StimulusReflex::Reflex.new(subscribe, url: "https://test.stimulusreflex.com")
  end

  test "something" do
    assert true
  end
end
