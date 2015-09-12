class TechnicianController < ApplicationController
  
  def home
    
  end

  def index
    @technicians = Technician.all
    redirect to '/'
  end

   def new
    @technician = technician.new
  end

   def create
    technician =technician.create(params.require(:name))
    if technician.save
      flash[:notice] = "Article created successfully"
      redirect_to technician
    elsif
      flash[:error] = "#{technician.errors}"
      redirect to "/technician/#{technician[:id]}"
    else
      render :new
    end
    # in this method you don't have anything to do with the view, so you don't need an instance variable
    end

   def show
    @technician = technician.find(params[:id])
  end

   def edit
    # edit and show the same, so also show.html.erb and edit.html.erb
  end

   def update
    # update is similar to create
    technician = technician.find(params[:id])
  
  
  end

  
   def destroy
    technician = technician.find(params[:id]).destroy
    redirect_to root_path
  end  

end