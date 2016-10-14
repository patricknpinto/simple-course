class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to candidates_path
    else
      render :new
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])
    if @candidate.update(candidate_params)
      redirect_to candidates_path
    else
      render :edit
    end
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy
  end

  private

  def candidate_params
    params.require(:candidate).permit(:name, :slug)
  end
end
