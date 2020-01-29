class School

  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end
  
  def add_student_name(student)
    student_names << student
  end
  
  def end_time
    (start_time.to_i + hours_in_school_day).to_s + ":00"
  end

  def is_full_time?
    hours_in_school_day > 4
  end

  def standard_student_names
    is_full_time? ? student_names.map { |student_name| student_name.capitalize } : student_names
  end

  def convert_end_time_to_clock_time
    return "12:00" if end_time == "12:00"
    return end_time if end_time.to_i <= 12
    (end_time.to_i - 12).to_s + ":00"
  end
end