require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:tiramisu) {Dessert.new("tiramisu", 20, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq('tiramisu')
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(20)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect {Dessert.new('tiramisu', 'ode', chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      dessert.add_ingredient('cream')
      expect(dessert.ingredients).to include('cream')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients.shuffle
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(4)
      expect(dessert.quantity).to eq(8)
    end

    it "raises an error if the amount is greater than the quantity"
      expect{ dessert.eat(20)}.to raise_error('bro ur asking for too much!')
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
      allow(chef).to recieve(:name).and_return("Swedish Chef")
      expect(dessert.serve).to include("Chef Swedish Chef")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
      expect(chef).to recieve(:bake).with(dessert)
      dessert.make_more
    end
  end
end