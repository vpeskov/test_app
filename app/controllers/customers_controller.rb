class CustomersController < ApplicationController

  def index
    @show_blacklist = params[:is_blacklist].nil? ? false : params[:is_blacklist]
    @customers = @show_blacklist ? Customer.where(is_blacklist: true) : Customer.where(is_blacklist: false)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    unless params[:customer][:change_by_phone_id].nil?
      customer = Customer.find(params[:customer][:change_by_phone_id])
      customer.is_blacklist = true
      customer.save
    end
    if @customer.update_attributes(customer_params)
      redirect_to :customers
    else
      render 'edit'
    end
  end

  def change
    customer = Customer.find(params[:id])
    customer.is_blacklist = false
    customer.save
    @customers = Customer.where(is_blacklist: false)
    @show_blacklist = false

    respond_to do |format|
      format.js
    end
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :phone, :description, :is_blacklist)
    end

end
