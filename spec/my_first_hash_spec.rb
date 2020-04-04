require_relative 'spec_helper'
require_relative '../my_first_hash.rb'


context "Challenge I: Instantiating Hashes" do
  describe "#my_hash" do
    it "uses the literal constructor to create a hash that contains key/value pairs" do 
      expect(my_hash).to be_a(Hash)
      expect(my_hash.keys.count).to_not eq(0)
    end
  end
end

context "Challenge II: Hash with Data" do 
  describe "#shipping_manifest" do 
    it "returns a hash with key/value pairs describing old-timey items" do 
      expect(shipping_manifest.keys).to match_array(["whale bone corsets", "oil paintings", "porcelain vases"])
      expect(shipping_manifest.values).to match_array([2, 5, 3])
    end
  end
end

context "Challenge III: Retrieving Data" do 
  describe "#retrieval" do 
    it "operates on the shipping_manifest hash to return the value of the 'oil paintings' key" do 
      expect(retrieval).to eq(3)
    end
  end
end

context "Challenge IV: Adding Data" do 
  describe "#adding" do 
    it "operates on the shipping_manifest hash to add a key/value pair" do 
      expect(adding).to eq({
                      "whale bone corsets" => 5, 
                      "porcelain vases" => 2, 
                      "oil paintings" => 3, 
                      "muskets" => 2,
                      "gun powder" => 4
                      })
    end
  end
end

def my_hash
  # use the literal constructor to set the variable, my_hash, equal to a hash with key/value pairs of your choice.

  your_hash = {"name" => "Sophie"}
end


def shipping_manifest
  # set a variable called `the_manifest`, equal to a hash
  # fill that hash with key/value pairs that describe the following information: 
  # We have 5 whale bone corsets, 2 porcelain vases and 3 oil paintings 

  the_manifest = {
      "whale bone corsets" => 5, 
      "porcelain vases" => 2, 
      "oil paintings" => 3
    }
end

def retrieval
  shipping_manifest = {
                  "whale bone corsets" => 5, 
                  "porcelain vases" => 2, 
                  "oil paintings" => 3
                 }

  # Look up the value of the "oil paintings" key in the shipping_manifest hash below
  shipping_manifest["oil paintings"]
end

def adding
  shipping_manifest = {
                  "whale bone corsets" => 5, 
                  "porcelain vases" => 2, 
                  "oil paintings" => 3
                 }
  # add 2 muskets to the shipping_manifest hash below
  shipping_manifest["muskets"] = 2


  # add 4 gun powder to the shipping_manifest hash below
  shipping_manifest["gun powder"] = 4


  # return the shipping_manifest hash below
  shipping_manifest
end
