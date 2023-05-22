require './lib/apartment'

describe Apartment do

  it 'rents apartment' do
    apartment = Apartment.new
    expect(apartment.is_rented?).to be false

    apartment.rent
    expect(apartment.is_rented?).to be true
  end


end