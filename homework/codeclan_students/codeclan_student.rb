class Student
  attr_accessor :student_name, :student_cohort

  def initialize(input_student_name, input_student_cohort)
    @student_name = input_student_name
    @student_cohort = input_student_cohort
  end

  def return_student_name
    return @student_name
  end

  def return_student_cohort
    return @student_cohort
  end

  def amend_student_name(new_student_name)
    @student_name = new_student_name
  end

  def amend_student_cohort(new_student_cohort)
    @student_cohort = new_student_cohort
  end

  def make_student_speak(student_words)
    return student_words
  end

  def give_student_favourite_language(student_favourite_language)
    return student_favourite_language
  end

end
