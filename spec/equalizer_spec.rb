require 'spec_helper'

describe Equalizer do
  context "one equalizer attribute" do
    it "creates equalities methods" do
      one = Pound.new(1)
      expect(one).to eq Pound.new(1)
      expect(one).not_to eq Pound.new(2)
      expect(one).to eql Pound.new(1)
      expect(one).not_to eql Pound.new(2)
      expect(one.hash).to eq Pound.new(1).hash
      expect(one.hash).not_to eq Pound.new(2).hash
      expect(one).not_to equal(Pound.new(1))
    end

    it "works as hash key" do
      one = Pound.new(1)
      h = { one => 2 }
      expect(h[Pound.new(1)]).to eq 2
      expect(h[Pound.new(2)]).to eq nil
    end
  end

  context "many equalizer attributes" do
    it "creates equalilities methods" do
      p_zero = Point.new(0, 0)
      expect(p_zero).to eq Point.new(0, 0)
      expect(p_zero).not_to eq Point.new(1, 0)
      expect(p_zero).not_to eq Point.new(0, 1)
      expect(p_zero).to eql Point.new(0, 0)
      expect(p_zero).not_to eql Point.new(1, 0)
      expect(p_zero).not_to eql Point.new(0, 1)
      expect(p_zero.hash).to eq Point.new(0, 0).hash
      expect(p_zero.hash).not_to eq Point.new(1, 0).hash
      expect(p_zero.hash).not_to eq Point.new(0, 1).hash
      expect(p_zero).not_to equal(Point.new(0, 9))
    end

    it "works as hash key" do
      p_zero = Point.new(0, 0)
      h = { p_zero => 2 }
      expect(h[Point.new(0, 0)]).to eq 2
      expect(h[Point.new(1, 0)]).not_to eq 2
    end
  end
end
