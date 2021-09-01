# frozen_string_literal: true

require 'string_calculator'

describe StringCalculator do
  describe 'add' do
    context 'given 10' do
      it 'return 10' do
        expect(StringCalculator.add('10')).to eql(10)
      end
    end

    context 'two numbers' do
      context "given '10,20'" do
        it 'return 30' do
          expect(StringCalculator.add('10,20')).to eql(30)
        end
      end
    end
  end
end


