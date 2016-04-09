class MotocyclesController < ApplicationController
  before_action :set_motocycle, only: [:show, :edit, :update, :destroy]

  # GET /motocycles
  # GET /motocycles.json
  def index
    @motocycles = Motocycle.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /motocycles/1
  # GET /motocycles/1.json
  def show
  end

  # GET /motocycles/new
  def new
    @motocycle = Motocycle.new
  end

  # GET /motocycles/1/edit
  def edit
  end

  # POST /motocycles
  # POST /motocycles.json
  def create
    @motocycle = Motocycle.new(motocycle_params)

    respond_to do |format|
      if @motocycle.save
        format.html { redirect_to @motocycle, notice: 'Motocycle was successfully created.' }
        format.json { render :show, status: :created, location: @motocycle }
      else
        format.html { render :new }
        format.json { render json: @motocycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motocycles/1
  # PATCH/PUT /motocycles/1.json
  def update
    respond_to do |format|
      if @motocycle.update(motocycle_params)
        format.html { redirect_to @motocycle, notice: 'Motocycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @motocycle }
      else
        format.html { render :edit }
        format.json { render json: @motocycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motocycles/1
  # DELETE /motocycles/1.json
  def destroy
    @motocycle.destroy
    respond_to do |format|
      format.html { redirect_to motocycles_url, notice: 'Motocycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motocycle
      @motocycle = Motocycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motocycle_params
      params.require(:motocycle).permit(:Brand, :Model, :Year, :Capacity, :Horsepower)
    end
end
