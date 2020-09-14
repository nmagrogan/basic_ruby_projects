require './caesar_cipher.rb'

describe '#cipher' do
  it 'works for 1 letter' do
    expect(cipher('a', 1)).to eql('b')
  end

  it 'works for multiple letters' do
    expect(cipher('aaa', 1)).to eql('bbb')
  end

  it 'works for greater than 1 shift' do
    expect(cipher('a', 3)).to eql('d')
  end

  it 'works for more than 1 word' do
    expect(cipher('a b', 2)).to eql('c d')
  end

  it 'ignores non alphabetic characters' do
    expect(cipher('!a9d', 2)).to eql('!c9f')
  end

  it 'wraps from z to a' do
    expect(cipher('z', 1)).to eql('a')
  end

  it 'works for capital letters' do
    expect(cipher('A', 1)).to eql('B')
  end

  it 'checking all at once' do
    expect(cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
end
