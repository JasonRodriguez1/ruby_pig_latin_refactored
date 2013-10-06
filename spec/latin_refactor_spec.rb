require 'rspec'
require 'latin_refactor'
 
describe 'pig_refactor' do
  it "adds 'way' to the end of a word that starts with a vowel" do
      pig_refactor('apple').should eq 'appleway'
    end
  it "moves the first consonant at the beginning of a word before a vowel to the end" do
      pig_refactor('cronut').should eq 'onutcray'
    end
  it "takes words that start with 'qu' and moves it to the back of the bus and adds 'ay'" do
    pig_refactor('quail').should eq 'ailquay'
    end
  it "takes words that contain 'qu' and moves it to the back of the bus and adds 'ay' " do
    pig_refactor('squeak').should eq 'eaksquay'
    end
  it "handles multiple words" do
    pig_refactor('apple cronut quail squeak').should eq 'appleway onutcray ailquay eaksquay'
  end
end
 
  