class PhonenumsController < ApplicationController

  http_basic_authenticate_with name: "123", password: "123", except: [:index ]

  def index
    @tele = Phonenum.all
  end

  def show
    @tele = Phonenum.find(params[:id])
  end 
  
  def new 
    @tele = Phonenum.new
  end
  def create
    @tele = Phonenum.new(tele_params)
    if @tele.save
      redirect_to @tele
    else 
      render :new, status: :unprocessable_entity
    end  
  end
  
  def edit
    @tele = Phonenum.find(params[:id])
  end
  def update
    @tele = Phonenum.find(params[:id])  
     if @tele.update(tele_params)
      redirect_to @tele
     else 
      render :new, status: :unprocessable_entity
     end
  end

  def destroy
    @tele = Phonenum.find(params[:id])
    @tele.destroy
    redirect_to root_path  , status: :see_other
  end
 
  private 
 
  def tele_params 
   params.require(:phonenum).permit(:name, :number, :status )
 end 

end
