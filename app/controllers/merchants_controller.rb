class MerchantsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]

  before_action :set_merchant, only: [:show, :edit, :update, :destroy]

  # GET /merchants
  # GET /merchants.json
  def index
    @merchants = Merchant.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
  end

  # GET /merchants/1
  # GET /merchants/1.json
  def show
  end

  # GET /merchants/new
  def new
    @merchant = Merchant.new
    @addresses = Address.all
  end

  # GET /merchants/1/edit
  def edit
  end

  # POST /merchants
  # POST /merchants.json
  def create
    @merchant = Merchant.new(merchant_params)

    respond_to do |format|
      if @merchant.save
        format.html { redirect_to @merchant, notice: 'Merchant was successfully created.' }
        format.json { render :show, status: :created, location: @merchant }
      else
        format.html { render :new }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merchants/1
  # PATCH/PUT /merchants/1.json
  def update
    respond_to do |format|
      if @merchant.update(merchant_params)
        format.html { redirect_to @merchant, notice: 'Merchant was successfully updated.' }
        format.json { render :show, status: :ok, location: @merchant }
      else
        format.html { render :edit }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchants/1
  # DELETE /merchants/1.json
  def destroy
    begin
      @merchant.destroy
      respond_to do |format|
        format.html { redirect_to merchants_url, notice: 'Merchant was successfully destroyed.' }
        format.json { head :no_content }
      end
    rescue Exception
      redirect_to merchants_path, :flash => { :error => "Can not remove this merchant" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchant
      @merchant = Merchant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merchant_params
      params.require(:merchant).permit(:name, :discount, :address_id)
    end
end
