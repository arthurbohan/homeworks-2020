# frozen_string_literal: true

# student
class Student
  attr_reader :name, :surname

  def initialize(name:, surname:)
    @name = name
    @surname = surname
    @student_homeworks = []
    @mentors = []
  end

  def submit_homework!(homework)
    submitted_homework = Homework.new(homework)
    @student_homeworks << submitted_homework
    notification(homework_notification(homework))
  end

  def homeworks
    p @student_homeworks
  end

  def homework_notification(homework)
    puts "#{name} #{surname} submit: #{homework}"
  end

  def notification(request)
    @mentor&.notification(request)
  end

  def submitted_mentor(current_mentor)
    @mentor = current_mentor
  end
end
