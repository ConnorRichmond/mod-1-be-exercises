require './lib/apartment'
require './lib/room'

describe Apartment do

  it 'rents apartment' do
    apartment = Apartment.new
    expect(apartment.is_rented?).to be false

    apartment.rent
    expect(apartment.is_rented?).to be true
  end

  it 'adds rooms alphabetically' do
    apartment = Apartment.new
    bathroom = Room.new('bathroom')

    apartment.add_room(bathroom)
    apartment.add_room(Room.new('laundry'))
    apartment.add_room(Room.new('kitchen'))
    apartment.add_room(Room.new('bedroom'))

    # expect(apartment.rooms).to eq(apartment.rooms.map(&'bathroom', 'laundry', 'kitchen', 'bedroom')

  end


end