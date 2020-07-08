class Dummy
end

RSpec.describe Dummy do
  it "passes with deprecation warning" do
    expect {
      nil
    }.not_to raise_error(ArgumentError)
  end

  it "gets skipped" do
    pending("not implemented yet")
    expect(1).to eq(2)
  end

  it "fails" do
    expect(1).to eq(2)
  end
end
