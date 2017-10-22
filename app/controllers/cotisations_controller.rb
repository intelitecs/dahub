class CotisationsController < ApplicationController
  before_action :set_cotisation, only: [:show, :edit, :update, :destroy]

  # GET /cotisations
  # GET /cotisations.json
  def index
    @cotisations = Cotisation.all
  end

  # GET /cotisations/1
  # GET /cotisations/1.json
  def show
  end

  # GET /cotisations/new
  def new
    @cotisation = Cotisation.new
  end

  # GET /cotisations/1/edit
  def edit
  end

  # POST /cotisations
  # POST /cotisations.json
  def create
    @cotisation = Cotisation.new(cotisation_params)

    respond_to do |format|
      if @cotisation.save
        format.html { redirect_to @cotisation, notice: 'Cotisation was successfully created.' }
        format.json { render :show, status: :created, location: @cotisation }
      else
        format.html { render :new }
        format.json { render json: @cotisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotisations/1
  # PATCH/PUT /cotisations/1.json
  def update
    respond_to do |format|
      if @cotisation.update(cotisation_params)
        format.html { redirect_to @cotisation, notice: 'Cotisation was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotisation }
      else
        format.html { render :edit }
        format.json { render json: @cotisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotisations/1
  # DELETE /cotisations/1.json
  def destroy
    @cotisation.destroy
    respond_to do |format|
      format.html { redirect_to cotisations_url, notice: 'Cotisation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotisation
      @cotisation = Cotisation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotisation_params
      params.require(:cotisation).permit(:periodStart, :periodEnd, :declaredAmount, :payedAmount, :company_id, :employee_id)
    end
end
