# frozen_string_literal: true

require 'sandwich'

describe Sandwich do
  context 'When the sandwich should be vegan' do
    # let(:sandwich) { Sandwich.new(false, false, ['lettuce','tomato','mustard']) }

    it 'should not have the meat' do
      expect(vegan_sandwich.meat).to eq(false)
    end

    it 'should not have cheese' do
      expect(vegan_sandwich.cheese).to eq(false)
    end
    
    it 'should not have mayonaise' do
      expect(vegan_sandwich.condiments).to_not include('mayonaise')
    end
  end

  context 'When the sandwich should not be vegan' do
    before(:each) do
      @sandwich = Sandwich.new(true, true, ['lettuce','tomato','mayonaise'])
    end

    it 'should have the meat' do
      expect(@sandwich.meat).to eq(true)
    end

    it 'should have cheese' do
      expect(@sandwich.cheese).to eq(true)
    end
    
    it 'should have mayonaise'do
      expect(@sandwich.condiments).to include('mayonaise')
    end
  end

  def vegan_sandwich
    Sandwich.new(false, false, ['lettuce','tomato','mustard'])
  end
end