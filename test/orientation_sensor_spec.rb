require_relative '../lib/orientation_sensor'

RSpec.describe OrientationSensor do
  let!(:orientation_sensor) { described_class.new }

  describe "#pitch" do
    it "provides the pitch" do
      expect(orientation_sensor).to respond_to(:pitch)
    end
  end

  describe "#roll" do
    it "provides the roll" do
      expect(orientation_sensor).to respond_to(:roll)
    end
  end
end
