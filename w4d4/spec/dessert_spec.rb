require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:tiramisu) {Dessert.new("tiramisu", 20)}
  let(:chef) { double("chef") }
 

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
      expect {Dessert.new('tiramisu', 'ode')}.to raise_error('Quantity must be a number bro')
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end