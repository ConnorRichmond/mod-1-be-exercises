class Reunion

  attr_reader :class_name,
              :activities

  def initialize(class_name)
    @class_name = class_name
    @activities = []
  end

  def add_activity(activity)
    @activities.push(activity)
  end

end