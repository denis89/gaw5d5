class ScheduleController < ApplicationController
  

  def home
    redirect to '/'
  end

  def index
    @schedules = Schedule.all
  end

   def new
    @schedule = schedule.new
  end

   def create
    schedule =schedule.create(params.require(:date))
    if schedule.save
      flash[:notice] = "Article created successfully"
      redirect_to schedule
    elsif
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
    
    
  
  end

  
   def destroy
    schedule = schedule.find(params[:id]).destroy
    redirect_to root_path
  end  

end