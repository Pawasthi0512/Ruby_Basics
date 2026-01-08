require_relative 'hello_world'

describe HelloWorld do
    context "When testing the HelloWorld class" do 
        it "should return 'Hello, World!' when say_hello is called" do
            hw = HelloWorld.new
            expect(hw.say_hello).to eq("Hello, World!")
        end
    end
end