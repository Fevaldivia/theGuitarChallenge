class HomeController < ApplicationController
  def welcome
  	@account = Account.new
  end

  def create
    @account = Account.new account_params
    if @account.save
      flash[:success] = "Thank you for signup we are going to let you know when the website is online!"
      render :welcome
    else
      flash[:error] = 'Cannot signup right now, try later'
      render :welcome
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def account_params
      params.require(:account).permit(:name, :email)
    end
end
