# frozen_string_literal: true

# mentor
class Mentor
  attr_reader :name, :surname

  def initialize(name:, surname:)
    @name = name
    @surname = surname
    @notifications = []
    @students = []
  end

  def subscribe_to(student)
    student.submitted_mentor(self)
  end

  def notification(message)
    notification = Notification.new(message)
    @notifications << notification
  end

  def notifications
    p @notifications
  end

  def read_notification!
    @notifications.clear
  end
end
