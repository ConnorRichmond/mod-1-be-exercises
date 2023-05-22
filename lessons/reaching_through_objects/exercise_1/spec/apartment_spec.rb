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
    apartment.add_room(laundry = Room.new('laundry'))
    apartment.add_room(kitchen = Room.new('kitchen'))
    apartment.add_room(bedroom = Room.new('bedroom'))

    expect(apartment.rooms).to eq([bathroom, laundry, kitchen, bedroom])
    expect(apartment.list_rooms_by_name_alphabetically).to eq(['bathroom', 'bedroom', 'kitchen', 'laundry'])
  end

  


end