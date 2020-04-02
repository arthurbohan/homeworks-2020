# frozen_string_literal: true

require_relative 'student'
require_relative 'mentor'
require_relative 'homework'
require_relative 'notification'

# module
module App
  def self.run
    student = Student.new(name: 'John', surname: 'Doe')
    mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')

    student.submit_homework!('Homework01') # => John Doe submit: Homework01
    student.homeworks

    mentor.subscribe_to(student)
    mentor.notifications # => []

    student.submit_homework!('Homework02') # => John Doe submit: Homework02
    mentor.notifications # => [Notification]

    mentor.read_notification!
    mentor.notifications # => []
  end
end

App.run
