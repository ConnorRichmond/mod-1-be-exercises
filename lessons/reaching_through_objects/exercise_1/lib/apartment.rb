class Apartment

  attr_reader :rented

  def initialize(rented = false)
    @rented = rented
  end

  def is_rented?
    if @rented == true
      true
    else
      false
    end
  end

  def rent
    @rented = true
  end

end