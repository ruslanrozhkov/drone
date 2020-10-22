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
  end

  describe "#gyroscope" do
    it "drone has one gyroscope" do
      expect(drone).to respond_to(:gyroscope)
    end
  end

  describe "#take_off" do
    it "take the drone in the air" do
      drone.take_off
      expect(drone.engines.first.status).to eq("on")
      expect(drone.status).to eq("hovering")
    end
  end

  describe "#stabilize" do
    it "makes the drone hover" do
      drone.stabilize
      expect(drone.status).to eq("hovering")
    end
  end

  describe "#land" do
    it "stabilizes and goes down at reduce speed" do
      drone.land
      expect(drone.engines.first.power).to eq(0)
      expect(drone.engines.first.status).to eq("off")
      expect(drone.status).to eq("off")
    end
  end
end
