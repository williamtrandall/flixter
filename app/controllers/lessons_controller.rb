class LessonsController < ApplicationController
  before_action :authenticate_user!

def show
  if not current_user.enrolled_in?(current_lesson.section.course)
    redirect_to course_path(current_lesson.section.course), alert: 'You are not enrolled in this course.'
  end
end

private

helper_method :current_lesson
def current_lesson
  @current_lesson ||= Lesson.find(params[:id])
end

end
