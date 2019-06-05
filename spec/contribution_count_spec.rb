RSpec.describe ContributionCount do
  it "has a version number" do
    expect(ContributionCount::VERSION).to eq "0.1.4"
  end

  context ".date(2019-01-01)" do
    let(:name) { "emono" }
    let(:date) { "2019-01-01" }
    it "should be 0" do
      expect(ContributionCount.new(name).date(date)).to eq 0
    end
  end
end
