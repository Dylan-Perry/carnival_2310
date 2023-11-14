require 'rspec'
require_relative "./spec_helper"

describe Ride do
    before(:all) do

        @ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

    end

    it "exists" do
        expect(@ride1).to be_a Ride
    end

    it "accepts hash arguments for name, min_height, admission_fee, and excitement" do
        expect(@ride1.name).to eq("Carousel")
        expect(@ride1.min_height).to eq(24)
        expect(@ride1.admission_fee).to eq(1)
        expect(@ride1.excitement).to eq(:gentle)
    end
end