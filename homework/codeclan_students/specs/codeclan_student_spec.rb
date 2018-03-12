require ('minitest/autorun')
require_relative '../codeclan_student.rb'

class TestStudents < MiniTest::Test

  def test_student_name
    student = Student.new("Marta", 20)
    assert_equal("Marta", student.student_name())
    assert_equal(20, student.student_cohort())
  end

  def test_return_student_name
    student = Student.new("Marta", 20)
    assert_equal("Marta", student.student_name())
  end

  def test_return_student_cohort
    student = Student.new("Marta", 20)
    assert_equal(20, student.student_cohort())
  end

  def test_amend_student_name
    student = Student.new("Marta", 20)
    student.amend_student_name("Marta B")
    assert_equal("Marta B", student.student_name())
  end

  def test_amend_student_cohort
    student = Student.new("Marta", 20)
    student.amend_student_cohort(21)
    assert_equal(21, student.student_cohort())
  end

  def test_make_student_speak
    student = Student.new("Marta", 20)
    student.make_student_speak("I can speak!")
    assert_equal("I can speak!", student.student_words())
    p "The student says: #{student.student_words}"
  end

  def test_student_favourite_language
    student = Student.new("Marta", 20)
    student.give_student_favourite_language("I love Ruby!")
    assert_equal("I love Ruby!", student.student_favourite_language())
    p "The student says: #{student.student_favourite_language}"
  end

end
