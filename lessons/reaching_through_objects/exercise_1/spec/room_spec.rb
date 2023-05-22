require './lib/room'


describe Room do

  it 'gives name to room' do
    bathroom = Room.new('bathroom')
    expect(bathroom.name).to eq('bathroom')
  end



end