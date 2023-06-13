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

  def total_cost_reunion
    @activities.sum do |activity|
      activity.total_cost
    end

  end
end