class ScheduleController < ApplicationController
  

  def home
  end

  def index
    @schedules = schedule.all
  end

   def new
    @schedule = schedule.new
  end

   def create
    schedule =schedule.create(params.require(:name)
    if article.save
      flash[:notice] = "Article created successfully"
      redirect_to schedule
    else
      flash[:error] = "#{schedule.errors}"
      redirect to "/schedule/#{schedule[:id]}"
    else
      render :new
    end
    # in this method you don't have anything to do with the view, so you don't need an instance variable
    end

   def show
    @schedule = schedule.find(params[:id])
  end

   def edit
    # edit and show the same, so also show.html.erb and edit.html.erb
  end

   def update
    # update is similar to create
    schedule = schedule.find(params[:id])
    
    if 
    else
    end
  
  end

  
   def destroy
    schedule = schedule.find(params[:id]).destroy
    redirect_to root_path
  end  

end