require_relative 'number_extractor'

describe NumberExtractor do
    context '#extract_numbers' do
       it 'should return an empty array for nil input' do
            expect(NumberExtractor.new.extract_numbers(nil)).to eq([])
       end
        it 'should return an empty array for empty string input' do
            expect(NumberExtractor.new.extract_numbers("")).to eq([])
       end
       it 'should return [1, 2, 3] for input "1, 2, 3"' do
            expect(NumberExtractor.new.extract_numbers("1, 2, 3")).to eq([1, 2, 3])
       end
         it 'should return [1, 2, 3] for input "1\n2,3"' do
            expect(NumberExtractor.new.extract_numbers("1\n2,3")).to eq([1, 2, 3])
       end
       it 'should return [1, 2, 3] for input with single custom delimiter "//;\n1;2;3"' do
            expect(NumberExtractor.new.extract_numbers("//;\n1;2;3")).to eq([1, 2, 3])
       end
       it 'should return [1, 2, 3] for input with multiple custom delimiters "//[***][%]\n1***2%3"' do
            expect(NumberExtractor.new.extract_numbers("//[***][%]\n1***2%3")).to eq([1, 2, 3])
       end
       it 'should return [10, 20, 30] for input with multi-character custom delimiter "//[***]\n10***20***30"' do
            expect(NumberExtractor.new.extract_numbers("//[***]\n10***20***30")).to eq([10, 20, 30])
       end
       it 'should return [0, -1, 2] for input "0,-1,2"' do
            expect(NumberExtractor.new.extract_numbers("0,-1,2")).to eq([0, -1, 2])
       end
       it 'should return [100, 200, 300] for input "100,200,300"' do
            expect(NumberExtractor.new.extract_numbers("100,200,300")).to eq([100, 200, 300])
       end

    end
end