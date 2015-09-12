class CustomerController < ApplicationController
 
 def home
  redirect to '/'
  end

  def index
    @customers = Customer.all
  end

   def new
    @customer = Customer.new
  end

   def create
    customer =Customer.create(params.require(:name).permit(:date, :phoneno))
    if customer.save
      flash[:notice] = "customer created successfully"
      redirect_to customer
    elsif
      flash[:error] = "#{customer.errors}"
      redirect to "/customer/#{customer[:id]}"
    else
      render :new
    end
    # in this method you don't have anything to do with the view, so you don't need an instance variable
    end

   def show
    @customer = Customer.find(params[:id])
  end

   def edit
    # edit and show the same, so also show.html.erb and edit.html.erb
  end

   def update
    # update is similar to create
    customer = Customer.find(params[:id])
    
   
  
  end

  
   def destroy
    customer = Customer.find(params[:id]).destroy
    
    redirect_to root_path
  end  

end