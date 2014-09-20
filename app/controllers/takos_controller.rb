class TakosController < ApplicationController
  before_action :set_tako, only: [:show, :edit, :update, :destroy]

  # GET /takos
  def index
    @takos = Tako.all
  end

  # GET /takos/1
  def show
  end

  # GET /takos/new
  def new
    @tako = Tako.new
  end

  # GET /takos/1/edit
  def edit
  end

  # POST /takos
  def create
    @tako = Tako.new(tako_params)

    if @tako.save
      redirect_to @tako, notice: 'Tako was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /takos/1
  def update
    if @tako.update(tako_params)
      redirect_to @tako, notice: 'Tako was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /takos/1
  def destroy
    @tako.destroy
    redirect_to takos_url, notice: 'Tako was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tako
      @tako = Tako.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tako_params
      params.require(:tako).permit(:name, :msg)
    end
end
