class MemberVisitsController < ApplicationController
  before_action :set_member_visit, only: [:show, :edit, :update, :destroy]

  # GET /member_visits
  # GET /member_visits.json
  def index
    @member_visits = MemberVisit.all
  end

  # GET /member_visits/1
  # GET /member_visits/1.json
  def show
  end

  # GET /member_visits/new
  def new
    @member_visit = MemberVisit.new
  end

  # GET /member_visits/1/edit
  def edit
  end

  # POST /member_visits
  # POST /member_visits.json
  def create
    @member_visit = MemberVisit.new(member_visit_params)

    respond_to do |format|
      if @member_visit.save
        format.html { redirect_to @member_visit, notice: 'Member visit was successfully created.' }
        format.json { render :show, status: :created, location: @member_visit }
      else
        format.html { render :new }
        format.json { render json: @member_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_visits/1
  # PATCH/PUT /member_visits/1.json
  def update
    respond_to do |format|
      if @member_visit.update(member_visit_params)
        format.html { redirect_to @member_visit, notice: 'Member visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_visit }
      else
        format.html { render :edit }
        format.json { render json: @member_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_visits/1
  # DELETE /member_visits/1.json
  def destroy
    @member_visit.destroy
    respond_to do |format|
      format.html { redirect_to member_visits_url, notice: 'Member visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_visit
      @member_visit = MemberVisit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_visit_params
      params.require(:member_visit).permit(:member_id, :date_of_visit, :shake_provided)
    end
end
