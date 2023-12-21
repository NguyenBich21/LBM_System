class PublishingCompaniesController < ApplicationController
  before_action :set_publishing_company, only: %i[ show edit update destroy ]

  # GET /publishing_companies or /publishing_companies.json
  def index
    @publishing_companies = PublishingCompany.all
  end

  # GET /publishing_companies/1 or /publishing_companies/1.json
  def show
  end

  # GET /publishing_companies/new
  def new
    @publishing_company = PublishingCompany.new
  end

  # GET /publishing_companies/1/edit
  def edit
  end

  # POST /publishing_companies or /publishing_companies.json
  def create
    @publishing_company = PublishingCompany.new(publishing_company_params)

    respond_to do |format|
      if @publishing_company.save
        format.html { redirect_to publishing_company_url(@publishing_company), notice: "Publishing company was successfully created." }
        format.json { render :show, status: :created, location: @publishing_company }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publishing_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publishing_companies/1 or /publishing_companies/1.json
  def update
    respond_to do |format|
      if @publishing_company.update(publishing_company_params)
        format.html { redirect_to publishing_company_url(@publishing_company), notice: "Publishing company was successfully updated." }
        format.json { render :show, status: :ok, location: @publishing_company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publishing_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publishing_companies/1 or /publishing_companies/1.json
  def destroy
    @publishing_company.destroy

    respond_to do |format|
      format.html { redirect_to publishing_companies_url, notice: "Publishing company was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publishing_company
      @publishing_company = PublishingCompany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def publishing_company_params
      params.require(:publishing_company).permit(:publisher_id, :name)
    end
end
