# frozen_string_literal: true

# student
class Student
  attr_reader :name, :surname, :homeworks

  def initialize(name:, surname:)
    @name = name
    @surname = surname
    @homeworks = []
    @mentors = []
  end

  def submit_homework!(homework)
    submitted_homework = Homework.new(homework)
    @homeworks << submitted_homework
    notification(homework_notification(homework))
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
