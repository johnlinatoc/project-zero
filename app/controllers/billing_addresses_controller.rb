class BillingAddressesController < ApplicationController
  before_action :set_billing_address, only: [:show, :update, :destroy]

  # GET /billing_addresses
  def index
    @billing_addresses = BillingAddress.all

    render json: @billing_addresses
  end

  # GET /billing_addresses/1
  def show
    render json: @billing_address
  end

  # POST /billing_addresses
  def create
    @billing_address = BillingAddress.new(billing_address_params)

    if @billing_address.save
      render json: @billing_address, status: :created, location: @billing_address
    else
      render json: @billing_address.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /billing_addresses/1
  def update
    if @billing_address.update(billing_address_params)
      render json: @billing_address
    else
      render json: @billing_address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /billing_addresses/1
  def destroy
    @billing_address.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_address
      @billing_address = BillingAddress.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def billing_address_params
      params.fetch(:billing_address, {})
    end
end
