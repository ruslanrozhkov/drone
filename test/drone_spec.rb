require_relative '../lib/drone'

RSpec.describe Drone do
  let!(:drone) { described_class.new(engines: 4) }

  describe "#engines" do
    it "drone has n engines" do
      expect(drone.engines.size).to eq(4)
    end
  end

  describe "#status" do
    it "the drone has a status (off, hovering, moving)" do
      expect(["off", "hovering", "moving"]).to include(drone.status)
    end

    it "take off drone" do
      drone.status = "hovering"
      expect(drone.status).to eq("hovering")
    end
  end

  describe "#gyroscope" do
    it "drone has one gyroscope" do
      expect(drone).to respond_to(:gyroscope)
    end
  end
end
