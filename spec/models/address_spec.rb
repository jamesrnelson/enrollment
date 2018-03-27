require 'rails_helper'

describe Address, type: :model do
  describe 'Validations' do
    it 'should be invalid without a description' do
      address1 = Address.new(description: nil, street_address: '123 Main St.', city: 'Anytown', state: 'PA', zip_code: 54321)

      expect(address1).to be_invalid
    end
    it 'should be invalid without a street_address' do
      address1 = Address.new(description: 'blah', street_address: nil, city: 'Anytown', state: 'PA', zip_code: 54321)

      expect(address1).to be_invalid
    end
    it 'should be invalid without a city' do
      address1 = Address.new(description: 'blah', street_address: '123 Main St.', city: nil, state: 'PA', zip_code: 54321)

      expect(address1).to be_invalid
    end
    it 'should be invalid without a state' do
      address1 = Address.new(description: 'blah', street_address: '123 Main St.', city: 'Anytown', state: nil, zip_code: 54321)

      expect(address1).to be_invalid
    end
    it 'should be invalid without a zip' do
      address1 = Address.new(description: 'blah', street_address: '123 Main St.', city: 'Anytown', state: 'PA', zip_code: nil)

      expect(address1).to be_invalid
    end
    it 'should be Valid with all attributes ' do
      address1 = Address.new(description: 'blah', street_address: '123 Main St.', city: 'Anytown', state: 'PA', zip_code: 54321)

      expect(address1).to be_valid
    end
  end
end
