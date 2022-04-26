class InfosController < ApplicationController
  
    http_basic_authenticate_with name: "123", password: "123"
    
def create
    @tele = Phonenum.find(params[:phonenum_id])
    @info = @tele.infos.create(info_params)
      redirect_to phonenum_path(@tele)  
end

def destroy
    @tele = Phonenum.find(params[:phonenum_id])
    @info = @tele.infos.find(params[:id])
    @info.destroy
        redirect_to phonenum_path(@tele), status: 303
  end

private

def info_params
    params.require(:info).permit(:addres , :dob, :status)
end



end
