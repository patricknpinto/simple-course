module Api
  class ScopeController < ApplicationController
    skip_before_action :authenticate_user!

    def current_candidate
      @_candidate ||= Candidate.find_by!(slug: params[:candidate_slug])
    end
  end
end
