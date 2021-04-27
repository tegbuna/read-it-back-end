class WantToReadsController < ApplicationController
  before_action :set_want_to_read, only: [:show, :update, :destroy]

  # GET /want_to_reads
  def index
    @want_to_reads = WantToRead.all

    render json: @want_to_reads
  end

  # GET /want_to_reads/1
  def show
    render json: @want_to_read
  end

  # POST /want_to_reads
  def create
    @want_to_read = WantToRead.new(want_to_read_params)

    if @want_to_read.save
      render json: @want_to_read, status: :created, location: @want_to_read
    else
      render json: @want_to_read.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /want_to_reads/1
  def update
    if @want_to_read.update(want_to_read_params)
      render json: @want_to_read
    else
      render json: @want_to_read.errors, status: :unprocessable_entity
    end
  end

  # DELETE /want_to_reads/1
  def destroy
    @want_to_read.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_want_to_read
      @want_to_read = WantToRead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def want_to_read_params
      params.require(:want_to_read).permit(:title, :author, :book_id, :have_read)
    end
end
