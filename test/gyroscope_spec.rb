require_relative '../lib/gyroscope'

RSpec.describe Gyroscope do
  let!(:gyroscope) { described_class.new }

  describe "#vectors" do
    it "gyroscope has 3 vectors" do
      expect(gyroscope.vectors.size).to eq(3)
    end
  end
end
