class StatesController < ApplicationController      
  def index
    @states = State.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"])    
  end
  
  def show
    logger.info("SHOW --> #{params[:id]} --> #{params[:id].class}")
    @state = State.find(params[:id])
  end

  def show_for_ac
    @state = State.find_by_name((params[:state])[:name])
    render :show
  end
  
  def new
    @state = State.new
  end
  
  def create
    @state = State.new(params[:state])
    if @state.save
      flash[:notice] = "Successfully created state."
      redirect_to @state
    else
      render :action => 'new'
    end
  end
  
  def edit
    logger.info("UPDATE --> #{params[:id]}")
    @state = State.find(params[:id])
  end
  
  def update
    @state = State.find(params[:id])
    if @state.update_attributes(params[:state])
      flash[:notice] = "Successfully updated state."
      redirect_to @state
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @state = State.find(params[:id])
    @state.destroy
    flash[:notice] = "Successfully destroyed state."
    redirect_to states_url
  end
end
