class BrandproductsController < ApplicationController
  before_action :set_brandproduct, only: %i[ show edit update destroy ]

  # GET /brandproducts or /brandproducts.json
  def index
    @brandproducts = Brandproduct.all
  end

  # GET /brandproducts/1 or /brandproducts/1.json
  def show
  end

  # GET /brandproducts/new
  def new
    @brandproduct = Brandproduct.new
  end

  # GET /brandproducts/1/edit
  def edit
  end

  # POST /brandproducts or /brandproducts.json
  def create
    @brandproduct = Brandproduct.new(brandproduct_params)

    respond_to do |format|
      if @brandproduct.save
        format.html { redirect_to brandproduct_url(@brandproduct), notice: "Brandproduct was successfully created." }
        format.json { render :show, status: :created, location: @brandproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brandproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brandproducts/1 or /brandproducts/1.json
  def update
    respond_to do |format|
      if @brandproduct.update(brandproduct_params)
        format.html { redirect_to brandproduct_url(@brandproduct), notice: "Brandproduct was successfully updated." }
        format.json { render :show, status: :ok, location: @brandproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brandproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brandproducts/1 or /brandproducts/1.json
  def destroy
    @brandproduct.destroy

    respond_to do |format|
      format.html { redirect_to brandproducts_url, notice: "Brandproduct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brandproduct
      @brandproduct = Brandproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brandproduct_params
      params.require(:brandproduct).permit(:name)
    end
end
