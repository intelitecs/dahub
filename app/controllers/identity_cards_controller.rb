class IdentityCardsController < ApplicationController
  before_action :set_identity_card, only: [:show, :edit, :update, :destroy]

  # GET /identity_cards
  # GET /identity_cards.json
  def index
    @identity_cards = IdentityCard.all
  end

  # GET /identity_cards/1
  # GET /identity_cards/1.json
  def show
  end

  # GET /identity_cards/new
  def new
    @identity_card = IdentityCard.new
  end

  # GET /identity_cards/1/edit
  def edit
  end

  # POST /identity_cards
  # POST /identity_cards.json
  def create
    @identity_card = IdentityCard.new(identity_card_params)

    respond_to do |format|
      if @identity_card.save
        format.html { redirect_to @identity_card, notice: 'Identity card was successfully created.' }
        format.json { render :show, status: :created, location: @identity_card }
      else
        format.html { render :new }
        format.json { render json: @identity_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /identity_cards/1
  # PATCH/PUT /identity_cards/1.json
  def update
    respond_to do |format|
      if @identity_card.update(identity_card_params)
        format.html { redirect_to @identity_card, notice: 'Identity card was successfully updated.' }
        format.json { render :show, status: :ok, location: @identity_card }
      else
        format.html { render :edit }
        format.json { render json: @identity_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identity_cards/1
  # DELETE /identity_cards/1.json
  def destroy
    @identity_card.destroy
    respond_to do |format|
      format.html { redirect_to identity_cards_url, notice: 'Identity card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identity_card
      @identity_card = IdentityCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def identity_card_params
      params.require(:identity_card).permit(:matricule, :start_at, :end_at, :employee_id, :authority_full_name, :authority_title, :country_id, :city_id)
    end
end
