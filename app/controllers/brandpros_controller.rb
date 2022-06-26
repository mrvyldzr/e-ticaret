class BrandprosController < ApplicationController
  before_action :set_brandpro, only: %i[ show edit update destroy ]

  # GET /brandpros or /brandpros.json
  def index
    @brandpros = Brandpro.all
  end

  # GET /brandpros/1 or /brandpros/1.json
  def show
  end

  # GET /brandpros/new
  def new
    @brandpro = Brandpro.new
  end

  # GET /brandpros/1/edit
  def edit
  end

  # POST /brandpros or /brandpros.json
  def create
    @brandpro = Brandpro.new(brandpro_params)

    respond_to do |format|
      if @brandpro.save
        format.html { redirect_to brandpro_url(@brandpro), notice: "Brandpro was successfully created." }
        format.json { render :show, status: :created, location: @brandpro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brandpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brandpros/1 or /brandpros/1.json
  def update
    respond_to do |format|
      if @brandpro.update(brandpro_params)
        format.html { redirect_to brandpro_url(@brandpro), notice: "Brandpro was successfully updated." }
        format.json { render :show, status: :ok, location: @brandpro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brandpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brandpros/1 or /brandpros/1.json
  def destroy
    @brandpro.destroy

    respond_to do |format|
      format.html { redirect_to brandpros_url, notice: "Brandpro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brandpro
      @brandpro = Brandpro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brandpro_params
      params.require(:brandpro).permit(:brand_id, :product_id)
    end
end
