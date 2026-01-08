require_relative 'calculator'

describe Calculator do
    context '#add' do
        it 'should have an add method' do
            expect(Calculator.new).to respond_to(:add)
        end
        it 'should return 0 for an empty string' do
            expect(Calculator.new.add("")).to eq(0)
        end
        it 'should return 5 for input "5"' do
            expect(Calculator.new.add("5")).to eq(5)
        end
        it 'should return 3 for input "1,2"' do
            expect(Calculator.new.add("1,2")).to eq(3)
        end
        it 'should return 6 for input "1\n2,3"' do
            expect(Calculator.new.add("1\n2,3")).to eq(6)
        end
        it 'should return 3 for input "//;\n1;2"' do
            expect(Calculator.new.add("//;\n1;2")).to eq(3)
        end
        it 'should raise an error for negative numbers' do
            expect { Calculator.new.add("1,-2,3,-4") }.to raise_error("Negative numbers not allowed: -2, -4")
        end
        it 'should ignore numbers greater than 1000' do
            expect(Calculator.new.add("2,1001")).to eq(2)
        end     
        it 'should handle multiple custom delimiters' do
            expect(Calculator.new.add("//[;][%]\n1;2%3")).to eq(6)
        end
        it 'should handle custom delimiters of any length' do
            expect(Calculator.new.add("//[***]\n1***2***3")).to eq(6)
        end 
        it 'should handle multiple custom delimiters of any length' do
            expect(Calculator.new.add("//[**][%%]\n1**2%%3")).to eq(6)
        end
    end
end