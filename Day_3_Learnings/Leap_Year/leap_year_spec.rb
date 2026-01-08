require_relative 'leap_year'

describe LeapYear do
    context "When testing the LeapYear class" do 
        before(:each) do
            @ly = LeapYear.new
        end
        it "should return true for year 2000" do
            expect(@ly.leap_year?(2000)).to eq(true)
        end

        it "should return false for year 1900" do
            expect(@ly.leap_year?(1900)).to eq(false)
        end

        it "should return true for year 2016" do
            expect(@ly.leap_year?(2016)).to eq(true)
        end

        it "should return false for year 2019" do
            expect(@ly.leap_year?(2019)).to eq(false)
        end
    end
end