require_relative 'main'

describe Car do
  describe '#fill_up' do
    it 'the car should have maximum fuel' do
      c = Car.new(50)
      p = double("Pump", dispense_fuel: 100)

      c.fill_up(p)

      expect(c.fuel_level).to eq(100)
    end
  end
end
