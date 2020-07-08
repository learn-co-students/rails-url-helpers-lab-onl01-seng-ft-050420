class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def student_active?
    if self.active == false
      @phrase ="This student is currently inactive."
      @phrase
    else 
      @phrase ="This student is currently active."
      @phrase
    end
  end
  
  def activate_student
    if self.active == false
      self.active = true
    else
      self.active = false
    end  
  end


end