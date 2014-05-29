class Euclidean
  def self.gcd(x, y)
    x.gcd(y)
  end
end

describe Euclidean, 'greatest common divisor' do
  it "should return 10 for 10 and 10" do
    expect(Euclidean.gcd(10, 10)).to eq(10)
  end

  it "should return 50 for 50 and 50" do
    expect(Euclidean.gcd(50, 50)).to eq(50)
  end

  it "should return 10 for 6 and 2" do
    expect(Euclidean.gcd(10, 6)).to eq(2)
  end

  it "should return 12 for 6 and 6" do
    expect(Euclidean.gcd(12, 6)).to eq(6)
  end

  it "should return 1 for 144 and 13" do
    expect(Euclidean.gcd(13, 144)).to eq(1)
  end
end
