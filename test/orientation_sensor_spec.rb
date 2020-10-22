require_relative '../lib/gyroscope'
require_relative '../lib/orientation_sensor'

RSpec.describe OrientationSensor do
  let!(:gyroscope)          { Gyroscope.new }
  let!(:orientation_sensor) { described_class.new(gyroscope) }

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

  it "the pitch is aligned to the x axis" do
    gyroscope.x = 100
    expect(orientation_sensor.pitch).to eq(gyroscope.x)
  end

  it "the roll is aligned to the y axis" do
    gyroscope.y = 50
    expect(orientation_sensor.roll).to eq(gyroscope.y)
  end
end
