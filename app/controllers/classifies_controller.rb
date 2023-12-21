class ClassifiesController < ApplicationController
  before_action :set_classify, only: %i[ show edit update destroy ]

  # GET /classifies or /classifies.json
  def index
    @classifies = Classify.all
  end

  # GET /classifies/1 or /classifies/1.json
  def show
  end

  # GET /classifies/new
  def new
    @classify = Classify.new
  end

  # GET /classifies/1/edit
  def edit
  end

  # POST /classifies or /classifies.json
  def create
    @classify = Classify.new(classify_params)

    respond_to do |format|
      if @classify.save
        format.html { redirect_to classify_url(@classify), notice: "Classify was successfully created." }
        format.json { render :show, status: :created, location: @classify }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @classify.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classifies/1 or /classifies/1.json
  def update
    respond_to do |format|
      if @classify.update(classify_params)
        format.html { redirect_to classify_url(@classify), notice: "Classify was successfully updated." }
        format.json { render :show, status: :ok, location: @classify }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classify.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classifies/1 or /classifies/1.json
  def destroy
    @classify.destroy

    respond_to do |format|
      format.html { redirect_to classifies_url, notice: "Classify was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classify
      @classify = Classify.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classify_params
      params.require(:classify).permit(:classification_id, :type)
    end
end
