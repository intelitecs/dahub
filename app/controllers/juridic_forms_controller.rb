class JuridicFormsController < ApplicationController
  before_action :set_juridic_form, only: [:show, :edit, :update, :destroy]

  # GET /juridic_forms
  # GET /juridic_forms.json
  def index
    @juridic_forms = JuridicForm.all
  end

  # GET /juridic_forms/1
  # GET /juridic_forms/1.json
  def show
  end

  # GET /juridic_forms/new
  def new
    @juridic_form = JuridicForm.new
  end

  # GET /juridic_forms/1/edit
  def edit
  end

  # POST /juridic_forms
  # POST /juridic_forms.json
  def create
    @juridic_form = JuridicForm.new(juridic_form_params)

    respond_to do |format|
      if @juridic_form.save
        format.html { redirect_to @juridic_form, notice: 'Juridic form was successfully created.' }
        format.json { render :show, status: :created, location: @juridic_form }
      else
        format.html { render :new }
        format.json { render json: @juridic_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /juridic_forms/1
  # PATCH/PUT /juridic_forms/1.json
  def update
    respond_to do |format|
      if @juridic_form.update(juridic_form_params)
        format.html { redirect_to @juridic_form, notice: 'Juridic form was successfully updated.' }
        format.json { render :show, status: :ok, location: @juridic_form }
      else
        format.html { render :edit }
        format.json { render json: @juridic_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juridic_forms/1
  # DELETE /juridic_forms/1.json
  def destroy
    @juridic_form.destroy
    respond_to do |format|
      format.html { redirect_to juridic_forms_url, notice: 'Juridic form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juridic_form
      @juridic_form = JuridicForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juridic_form_params
      params.require(:juridic_form).permit(:name, :description)
    end
end
