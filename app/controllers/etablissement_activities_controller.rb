class EtablissementActivitiesController < ApplicationController
  before_action :set_etablissement_activity, only: [:show, :edit, :update, :destroy]

  # GET /etablissement_activities
  # GET /etablissement_activities.json
  def index
    @etablissement_activities = EtablissementActivity.all
  end

  # GET /etablissement_activities/1
  # GET /etablissement_activities/1.json
  def show
  end

  # GET /etablissement_activities/new
  def new
    @etablissement_activity = EtablissementActivity.new
  end

  # GET /etablissement_activities/1/edit
  def edit
  end

  # POST /etablissement_activities
  # POST /etablissement_activities.json
  def create
    @etablissement_activity = EtablissementActivity.new(etablissement_activity_params)

    respond_to do |format|
      if @etablissement_activity.save
        format.html { redirect_to @etablissement_activity, notice: 'Etablissement activity was successfully created.' }
        format.json { render :show, status: :created, location: @etablissement_activity }
      else
        format.html { render :new }
        format.json { render json: @etablissement_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etablissement_activities/1
  # PATCH/PUT /etablissement_activities/1.json
  def update
    respond_to do |format|
      if @etablissement_activity.update(etablissement_activity_params)
        format.html { redirect_to @etablissement_activity, notice: 'Etablissement activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @etablissement_activity }
      else
        format.html { render :edit }
        format.json { render json: @etablissement_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etablissement_activities/1
  # DELETE /etablissement_activities/1.json
  def destroy
    @etablissement_activity.destroy
    respond_to do |format|
      format.html { redirect_to etablissement_activities_url, notice: 'Etablissement activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etablissement_activity
      @etablissement_activity = EtablissementActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etablissement_activity_params
      params.require(:etablissement_activity).permit(:etablissement_id, :activity_id)
    end
end
