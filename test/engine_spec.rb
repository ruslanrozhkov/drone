require_relative '../lib/engine'

RSpec.describe Engine do
  let!(:engine) { described_class.new }

  describe "#power" do
    it "an engine has a power indicator from 0 to 100" do
      expect(0..100).to include(engine.power)
    end

    it "set full power" do
      engine.power = 100
      expect(engine.power).to eq(100)
    end

    it "an engine has a status (off, on)" do
      expect(["on", "off"]).to include(engine.status)
    end

    it "turn off engine" do
      engine.status = "off"
      expect(engine.status).to eq("off")
    end
  end
end
