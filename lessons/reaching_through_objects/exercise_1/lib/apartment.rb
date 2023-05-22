class Apartment

  attr_reader :rooms

  def initialize
    @rented = false
    @rooms = []
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room)
    if @rooms.length < 4
      @rooms << room
    else
      puts "Cannot add more than 4 rooms."
    end
  end

  def list_rooms_by_name_alphabetically
    @rooms.map(&:name).sort
  end

end