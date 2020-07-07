class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    if self.active == false
      active_status = "inactive"
    else
      active_status = "active"
    end
  end
end