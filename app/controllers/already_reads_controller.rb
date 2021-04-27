class AlreadyReadsController < ApplicationController
  before_action :set_already_read, only: [:show, :update, :destroy]

  # GET /already_reads
  def index
    @already_reads = AlreadyRead.all

    render json: @already_reads
  end

  # GET /already_reads/1
  def show
    render json: @already_read
  end

  # POST /already_reads
  def create
    @already_read = AlreadyRead.new(already_read_params)

    if @already_read.save
      render json: @already_read, status: :created, location: @already_read
    else
      render json: @already_read.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /already_reads/1
  def update
    if @already_read.update(already_read_params)
      render json: @already_read
    else
      render json: @already_read.errors, status: :unprocessable_entity
    end
  end

  # DELETE /already_reads/1
  def destroy
    @already_read.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_already_read
      @already_read = AlreadyRead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def already_read_params
      params.require(:already_read).permit(:title, :author, :book_id, :have_read)
    end
end
