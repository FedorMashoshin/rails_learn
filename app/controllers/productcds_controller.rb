class ProductcdsController < ApplicationController
  before_action :set_productcd, only: %i[ show edit update destroy ]

  # GET /productcds or /productcds.json
  def index
    @productcds = Productcd.all
  end

  # GET /productcds/1 or /productcds/1.json
  def show
  end

  # GET /productcds/new
  def new
    @productcd = Productcd.new
  end

  # GET /productcds/1/edit
  def edit
  end

  # POST /productcds or /productcds.json
  def create
    @productcd = Productcd.new(productcd_params)

    respond_to do |format|
      if @productcd.save
        format.html { redirect_to productcd_url(@productcd), notice: "Productcd was successfully created." }
        format.json { render :show, status: :created, location: @productcd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @productcd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productcds/1 or /productcds/1.json
  def update
    respond_to do |format|
      if @productcd.update(productcd_params)
        format.html { redirect_to productcd_url(@productcd), notice: "Productcd was successfully updated." }
        format.json { render :show, status: :ok, location: @productcd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @productcd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productcds/1 or /productcds/1.json
  def destroy
    @productcd.destroy!

    respond_to do |format|
      format.html { redirect_to productcds_url, notice: "Productcd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productcd
      @productcd = Productcd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productcd_params
      params.fetch(:productcd, {})
    end
end
