require './lib/caesar_cipher'

describe "#caesar_cipher" do
  it "returns the decrypted word/words" do
    expect(caesar_cipher("Wolverine", 5)).to eql("Btqajwnsj")
  end
end
