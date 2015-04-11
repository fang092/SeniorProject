class PortfilosController < ApplicationController
  before_action :set_portfilo, only: [:show, :edit, :update, :destroy]

  # GET /portfilos
  # GET /portfilos.json
  def index
    @portfilos = Portfilo.all
  end

  # GET /portfilos/1
  # GET /portfilos/1.json
  def show
  end

  # GET /portfilos/new
  def new
    @portfilo = Portfilo.new
  end

  # GET /portfilos/1/edit
  def edit
  end

  # POST /portfilos
  # POST /portfilos.json
  def create
    @portfilo = Portfilo.new(portfilo_params)

    respond_to do |format|
      if @portfilo.save
        format.html { redirect_to @portfilo, notice: 'Portfilo was successfully created.' }
        format.json { render :show, status: :created, location: @portfilo }
      else
        format.html { render :new }
        format.json { render json: @portfilo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfilos/1
  # PATCH/PUT /portfilos/1.json
  def update
    respond_to do |format|
      if @portfilo.update(portfilo_params)
        format.html { redirect_to @portfilo, notice: 'Portfilo was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfilo }
      else
        format.html { render :edit }
        format.json { render json: @portfilo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfilos/1
  # DELETE /portfilos/1.json
  def destroy
    @portfilo.destroy
    respond_to do |format|
      format.html { redirect_to portfilos_url, notice: 'Portfilo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfilo
      @portfilo = Portfilo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfilo_params
      params.require(:portfilo).permit(:name, :info)
    end
end
