class CountsController < ApplicationController
  before_action :authenticate_user!, only: [:create,:index]
  
  def index
    @counts = Count.includes(:user)
    @checks = Check.includes(:user)
    @unused_total = Count.sum(:unused)
  end

  def new
    @count = Count.new
  end

  def create
    @count = Count.new(count_params)
    if @count.save
      redirect_to counts_path, falsh: {success: "成功"}
    else 
      render :new, flash: {false: "失敗"}
    end
  end

  def destroy_all
    Check.destroy_all
    Count.destroy_all
    redirect_to counts_path
  end  

  private

  def count_params
    params.require(:count)
          .permit(:date, :prepared_number, :handed_number, :unused)
          .merge(user_id:current_user.id)
  end  

end
