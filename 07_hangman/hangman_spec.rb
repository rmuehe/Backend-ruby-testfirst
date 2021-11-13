require "hangman"

describe "the hangman function" do

  it "handles 'b' for 'bob'" do
    expect(hangman("bob", ['b'])).to eq("b_b")
  end

  it "handles 'a' and 'h' for 'alphabet'" do
    expect(hangman("alphabet", ['a', 'h'])).to eq("a__ha___")
  end

  it "handles capital letters" do
    expect(hangman("Bob", ['b'])).to eq("B_b")
  end  

end