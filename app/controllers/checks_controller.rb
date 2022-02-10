class ChecksController < ApplicationController

  def index
    @check = Check.new
    @checks = Check.includes(:user)  
  end

  def new
    @check = Check.new
  end

  def create
    @prepared_total = Count.sum(:prepared_number)
    @arrival_total = Check.sum(:arrival)
    @check = Check.new(check_params)
    stock_calculation
    if @check.save
      redirect_to counts_path
    else 
      render :new
    end
  end

  private

  def check_params
    params.require(:check)
          .permit(:arrival, :stock, :check_date)
          .merge(user_id:current_user.id)
  end 

  def stock_calculation
    result = @check.arrival + @arrival_total - @prepared_total
    @check.stock = result
  end

end
