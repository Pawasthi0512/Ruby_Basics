require_relative 'calculator'

describe Calculator do
    context '#add' do
        it 'should have an add method' do
            expect(Calculator.new).to respond_to(:add)
        end
    end
end