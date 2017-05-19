require "caesar_cipher"

describe "caesar_cipher" do
  it "shifts lowercase letters by key" do
  	expect(caesar_cipher("car",3)).to eq("fdu")
  end

end