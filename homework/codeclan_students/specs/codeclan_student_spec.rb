require ('minitest/autorun')
require_relative '../codeclan_student.rb'

class TestStudents < MiniTest::Test

  def setup()

    @student = Student.new("Marta", 20)

  end

  def test_return_student_name
    assert_equal("Marta", @student.student_name())
  end

  def test_return_student_cohort
    assert_equal(20, @student.student_cohort())
  end

  def test_amend_student_name
    @student.amend_student_name("Marta B")
    assert_equal("Marta B", @student.student_name())
  end

  def test_amend_student_cohort
    @student.amend_student_cohort(21)
    assert_equal(21, @student.student_cohort())
  end

  def test_make_student_speak
    result = @student.make_student_speak("I can speak!")
    assert_equal("I can speak!", result)
  end

  def test_student_favourite_language
    result = @student.give_student_favourite_language("I love Ruby!")
    assert_equal("I love Ruby!", result)
  end

end
