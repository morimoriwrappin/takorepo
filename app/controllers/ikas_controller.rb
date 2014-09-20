class IkasController < ApplicationController
  before_action :set_ika, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  # GET /ikas
  def index
    @ikas = Ika.all
  end

  # GET /ikas/1
  def show
  end

  # GET /ikas/new
  def new
    @ika = Ika.new
  end

  # GET /ikas/1/edit
  def edit
  end

  # POST /ikas
  def create
    @ika = Ika.new(ika_params)
    @ika.user = current_user

    if @ika.save
      redirect_to @ika, notice: 'Ika was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ikas/1
  def update
    if @ika.update(ika_params)
      redirect_to @ika, notice: 'Ika was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ikas/1
  def destroy
    @ika.destroy
    redirect_to ikas_url, notice: 'Ika was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ika
      @ika = Ika.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ika_params
      params.require(:ika).permit(:user_id, :title, :description, :background)
    end
end
