class CommitteeOfficesController < ApplicationController
  before_action :set_committee_office, only: [:show, :edit, :update, :destroy]

  # GET /committee_offices
  # GET /committee_offices.json
  def index
    @committee_offices = CommitteeOffice.all
  end

  # GET /committee_offices/1
  # GET /committee_offices/1.json
  def show
  end

  # GET /committee_offices/new
  def new
    @committee_office = CommitteeOffice.new
  end

  # GET /committee_offices/1/edit
  def edit
  end

  # POST /committee_offices
  # POST /committee_offices.json
  def create
    @committee_office = CommitteeOffice.new(committee_office_params)

    respond_to do |format|
      if @committee_office.save
        format.html { redirect_to @committee_office, notice: 'Committee office was successfully created.' }
        format.json { render :show, status: :created, location: @committee_office }
      else
        format.html { render :new }
        format.json { render json: @committee_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /committee_offices/1
  # PATCH/PUT /committee_offices/1.json
  def update
    respond_to do |format|
      if @committee_office.update(committee_office_params)
        format.html { redirect_to @committee_office, notice: 'Committee office was successfully updated.' }
        format.json { render :show, status: :ok, location: @committee_office }
      else
        format.html { render :edit }
        format.json { render json: @committee_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /committee_offices/1
  # DELETE /committee_offices/1.json
  def destroy
    @committee_office.destroy
    respond_to do |format|
      format.html { redirect_to committee_offices_url, notice: 'Committee office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_committee_office
      @committee_office = CommitteeOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def committee_office_params
      params.require(:committee_office).permit(:name)
    end
end
