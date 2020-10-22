require_relative '../lib/drone'

RSpec.describe Drone do
  let!(:drone) { described_class.new(engines: 4) }

  describe "#engines" do
    it "drone has n engines" do
      expect(drone.engines.size).to eq(4)
    end
  end
end
