module PrimeFactors
  def generate
    n = self
    primes = []
    (2..n).each do |candidate|
      break if n == 1
      while n % candidate == 0
        primes << candidate
        n /= candidate
      end
    end
    primes
  end
end

class Fixnum
  include PrimeFactors
end

class Bignum
  include PrimeFactors
end

describe "prime factor kata" do
  it "gives [] for 1" do
    1.generate.should == []
  end;
  it "give [2] for 2" do
    2.generate.should == [2]
  end
  it "give [3] for 3" do
    3.generate.should == [3]
  end
  it "give [2, 2] for 4" do
    4.generate.should == [2, 2]
  end
  it "give [2, 3] for 6" do
    6.generate.should == [2, 3]
  end
  it "give [2, 2, 2] for 8" do
    8.generate.should == [2, 2, 2]
  end
  it "give [3, 3] for 9" do
    9.generate.should == [3,3]
  end
  it "give [3,3,3607,3803] for 123456789" do
    123456789.generate.should == [3,3,3607,3803]
  end
  it "give [3,3,101,3541,3607,3803,27961] for 1234567890123456789" do
    1234567890123456789.generate.should == [3,3,101,3541,3607,3803,27961]
  end
  it "gives [] for 600851475143" do
    600851475143.generate.should == [71, 839, 1471, 6857]
  end
end

describe "euler_prob3 solution" do
  it "gives 29 as the max prime factor of 13195" do
    13195.generate.max.should == 29
  end
  it "gives 6857 as the max prime for 600851475143" do
    600851475143.generate.max.should == 6857
  end
end


