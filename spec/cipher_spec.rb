# spec/cipher_spec.rb

require './lib/cipher'

RSpec.describe Cipher do
  describe '#cipher' do
    it 'shifts all characters to the right by 1' do
      expect(subject.cipher('abcd', 3)).to eql('bcde')
    end
  end
end
