class EmailsController < ApplicationController
  def index
  	@emails = Email.all
  	respond_to do |format|
      format.html 
      format.js  

  end

  end

  def show
    @email = Email.find(params[:id])

    respond_to do |format|
      format.html 
      format.js  

  end

  end

  def destroy
  	  
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html
      format.js 
    end
  end

end
