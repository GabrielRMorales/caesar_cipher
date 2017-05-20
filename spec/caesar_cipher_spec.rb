require "caesar_cipher"

describe "caesar_cipher" do
  it "shifts lowercase letters by key" do
  	expect(caesar_cipher("car",3)).to eq("fdu")
  end
  
  it "shifts uppercase letters by key" do
  	expect(caesar_cipher("Carbine",10)).to eq("Mkblsxo")
  end

  it "does not change white spaces" do
  	expect(caesar_cipher("a b c",2)).to eq("c d e")
  end

  it "wraps around the alphabet when shifting" do
  	expect(caesar_cipher("xYz",3)).to eq("aBc")
  end

  it "wraps for numbers above 26" do
  	expect(caesar_cipher("abcde", 28)).to eq("cdefg")
  end

  it "does not change non-alpha chars" do
  	expect(caesar_cipher("Hello, how was #25?",5)).to eq("Mjqqt, mtb bfx #25?")
  end

end
