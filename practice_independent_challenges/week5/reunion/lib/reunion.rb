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

  def total_owed_reunion
    owed = Hash.new(0)
    @activities.each do |activity|
      activity.owed.each do |participant, ammount_owed|
        owed[participant] += ammount_owed
      end
    end
    owed
  end

  def summary
    summary = ""
    total_owed_reunion.each do |participant, money_owed|
      summary += "#{participant}: #{money_owed}\n"
    end
    summary
  end


end