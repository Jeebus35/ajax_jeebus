class EmailsController < ApplicationController
  def index
     @emails=Email.all
  end

  def show
    @emails = Email.all
    @email = Email.find_by(id: params[:id])
      respond_to do |format|
        format.html {}
        format.js {}
    end 
  end

  def create
    @email = Email.new(object: Faker::Book.genre, body: Faker::Book.title)
   if @email.save
      respond_to do |format|
        format.html {redirect_to root_path} 
        format.js { }
      end    
   end
 end

end