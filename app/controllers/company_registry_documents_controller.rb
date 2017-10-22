class CompanyRegistryDocumentsController < ApplicationController
  before_action :set_company_registry_document, only: [:show, :edit, :update, :destroy]

  # GET /company_registry_documents
  # GET /company_registry_documents.json
  def index
    @company_registry_documents = CompanyRegistryDocument.all
  end

  # GET /company_registry_documents/1
  # GET /company_registry_documents/1.json
  def show
  end

  # GET /company_registry_documents/new
  def new
    @company_registry_document = CompanyRegistryDocument.new
  end

  # GET /company_registry_documents/1/edit
  def edit
  end

  # POST /company_registry_documents
  # POST /company_registry_documents.json
  def create
    @company_registry_document = CompanyRegistryDocument.new(company_registry_document_params)

    respond_to do |format|
      if @company_registry_document.save
        format.html { redirect_to @company_registry_document, notice: 'Company registry document was successfully created.' }
        format.json { render :show, status: :created, location: @company_registry_document }
      else
        format.html { render :new }
        format.json { render json: @company_registry_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_registry_documents/1
  # PATCH/PUT /company_registry_documents/1.json
  def update
    respond_to do |format|
      if @company_registry_document.update(company_registry_document_params)
        format.html { redirect_to @company_registry_document, notice: 'Company registry document was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_registry_document }
      else
        format.html { render :edit }
        format.json { render json: @company_registry_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_registry_documents/1
  # DELETE /company_registry_documents/1.json
  def destroy
    @company_registry_document.destroy
    respond_to do |format|
      format.html { redirect_to company_registry_documents_url, notice: 'Company registry document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_registry_document
      @company_registry_document = CompanyRegistryDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_registry_document_params
      params.require(:company_registry_document).permit(:name, :description)
    end
end
