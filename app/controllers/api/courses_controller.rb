module Api
  class CoursesController < Api::ScopeController
    def index
      @courses = current_candidate.courses
      render json: { name: 'ola' }
    end
  end
end
