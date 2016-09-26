class BorrowersController < ApplicationController
  before_action :set_borrower, only: [:show, :update, :destroy]

  # GET /borrowers
  # GET /borrowers.json
  def index
    @borrowers = Borrower.all

    render json: @borrowers
  end

  # GET /borrowers/1
  # GET /borrowers/1.json
  def show
    render json: @borrower
  end

  # POST /borrowers
  # POST /borrowers.json
  def create
    @borrower = Borrower.new(borrower_params)

    if @borrower.save
      render json: @borrower, status: :created, location: @borrower
    else
      render json: @borrower.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /borrowers/1
  # PATCH/PUT /borrowers/1.json
  def update
    @borrower = Borrower.find(params[:id])

    if @borrower.update(borrower_params)
      head :no_content
    else
      render json: @borrower.errors, status: :unprocessable_entity
    end
  end

  # DELETE /borrowers/1
  # DELETE /borrowers/1.json
  def destroy
    @borrower.destroy

    head :no_content
  end

  private

  def set_borrower
    @borrower = Borrower.find(params[:id])
  end

  def borrower_params
    params.require(:borrower).permit(:given_name, :surname)
  end
end
