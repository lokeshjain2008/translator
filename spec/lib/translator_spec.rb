require 'spec_helper'

describe Translator do

  it 'version should be ' do
    # Translator::VERSION.should eq '0.0.3.0'
    expect(Translator::VERSION).to eq('0.0.3.0')

  end

  context 'having methods defined' do
    it 'should have following methods top method' do
      expect(Translator).to respond_to(:create_file)
      expect(Translator).to respond_to(:translate)
    end
  end



end