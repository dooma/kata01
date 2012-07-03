#test_kata01.rb
require "./lib/kata01.rb"
kata01=KataTraining.new
describe KataTraining do
	describe "#citire" do
		it "file content should be nil" do
			@fisier.should be_nil
		end
		it "fisier variable should not be nil after file reading" do 
			continut=kata01.citire
			continut.should_not be_nil
		end
	end
	describe "#prelucrare" do
		it "should show day and smallest temperature" do
			Kernel.should_not_receive :puts
			kata01.prelucrare
		end
	end
end

