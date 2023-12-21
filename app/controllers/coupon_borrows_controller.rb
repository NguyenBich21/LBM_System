class CouponBorrowsController < ApplicationController
  before_action :set_coupon_borrow, only: %i[ show edit update destroy ]

  # GET /coupon_borrows or /coupon_borrows.json
  def index
    @coupon_borrows = CouponBorrow.all
  end

  # GET /coupon_borrows/1 or /coupon_borrows/1.json
  def show
  end

  # GET /coupon_borrows/new
  def new
    @coupon_borrow = CouponBorrow.new
  end

  # GET /coupon_borrows/1/edit
  def edit
  end

  # POST /coupon_borrows or /coupon_borrows.json
  def create
    @coupon_borrow = CouponBorrow.new(coupon_borrow_params)

    respond_to do |format|
      if @coupon_borrow.save
        format.html { redirect_to coupon_borrow_url(@coupon_borrow), notice: "Coupon borrow was successfully created." }
        format.json { render :show, status: :created, location: @coupon_borrow }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coupon_borrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coupon_borrows/1 or /coupon_borrows/1.json
  def update
    respond_to do |format|
      if @coupon_borrow.update(coupon_borrow_params)
        format.html { redirect_to coupon_borrow_url(@coupon_borrow), notice: "Coupon borrow was successfully updated." }
        format.json { render :show, status: :ok, location: @coupon_borrow }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coupon_borrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coupon_borrows/1 or /coupon_borrows/1.json
  def destroy
    @coupon_borrow.destroy

    respond_to do |format|
      format.html { redirect_to coupon_borrows_url, notice: "Coupon borrow was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coupon_borrow
      @coupon_borrow = CouponBorrow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coupon_borrow_params
      params.require(:coupon_borrow).permit(:coupon_borrow_id, :student_id, :borrow_time, :isbd, :quantity, :return_date, :librarian_id)
    end
end
