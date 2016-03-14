class GuestbooksController < ApplicationController
  before_action :set_guestbook, only: [:show, :update, :destroy]

  # GET /guestbooks
  def index
    @guestbooks = Guestbook.all

    render json: @guestbooks
  end

  # GET /guestbooks/1
  def show
    render json: @guestbook
  end

  # POST /guestbooks
  def create
    @guestbook = Guestbook.new(guestbook_params)

    if @guestbook.save
      render json: @guestbook, status: :created, location: @guestbook
    else
      render json: @guestbook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /guestbooks/1
  def update
    if @guestbook.update(guestbook_params)
      render json: @guestbook
    else
      render json: @guestbook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /guestbooks/1
  def destroy
    @guestbook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guestbook
      @guestbook = Guestbook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guestbook_params
      params.require(:guestbook).permit(:name, :email, :body, :artist, :song)
    end
end
