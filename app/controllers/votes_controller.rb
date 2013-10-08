class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
  end

  # GET /votes/new
  def new
    @vote = current_user.votes.build
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = current_user.votes.build(vote_params)

    respond_to do |format|
      if @vote.save
        redirect_to @vote, notice: 'Vote was successfully submitted'}
      else
        render action: 'new'
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    if @vote.update(vote_params)
      redirects_to @vote, note: "vote was update"
    else
      render action: 'edit'
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    redirects_to pins_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    def correct_user
      @vote = current_user.pins.find_by(id: params[:id])
      redirect_to vote_path, notice: "Cannot edit this vote" if @vote.nil?
    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
      params.require(:vote).permit(:player_name)
    end
end
