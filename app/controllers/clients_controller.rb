class ClientsController < ApplicationController


def show
  #client_show = Client.find_by(params[: user_id])
end

  # def new
  #  @client = Client.new
  # end

  def create
    # @client = Client.new(client_params)
    @client = Client.new
    @client.user_id = params["user_id"]
    @client.first_name = params["first_name"]
    @client.last_name = params["last_name"]
    @client.sex = params["sex"]
    @client.image_url = params["image_url"]
    @client.date_of_birth = params["date_of_birth"]
    @client.email = params["email"]
    @client.phone = params["phone"]
    @client.save
    redirect_to "/clients/show"
  end

  def index
   @client = Client.all
  end



# def edit
#   @client = Client.find(params[:id])
# end

# def update
#   @client = Client.find(params[:id])
#   if @client.update(params[:client].permit(:client_name, :owner_name, :contact_name, :phone, :address, :email))
#     redirect_to @client
#   else
#     render 'edit'
#   end
# #end

# def destroy
#   @client = Client.find(params[:id])
#   @client.destroy
#   redirect_to "/clients"
# end

 # private
 #  def client_params
 #     params.require(:client).permit(:client_name, :owner_name, :contact_name, :phone, :address, :email)
 #  end

# end
end