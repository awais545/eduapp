class ExperiencesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_experience, :only => [:show, :edit, :update, :destroy]


  # GET /experiences
  # GET /experiences.xml
  def index
    @experiences = Experience.all

    respond_to do |wants|
      wants.html # index.html.erb
      wants.xml  { render :xml => @experiences }
    end
  end

  # GET /experiences/1
  # GET /experiences/1.xml
  def show
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @experience }
    end
  end

  # GET /experiences/new
  # GET /experiences/new.xml
  def new
    @experience = Experience.new

    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @experience }
    end
  end

  # GET /experiences/1/edit
  def edit
  end

  # POST /experiences
  # POST /experiences.xml
  def create
    @experience = current_user.experiences.new(params[:experience])

    respond_to do |wants|
      if @experience.save
        flash[:notice] = 'Experience was successfully created.'
        wants.html { redirect_to(experience_profiles_path) }
        wants.xml  { render :xml => @experience, :status => :created, :location => @experience }
      else
        wants.html { render :action => "../profiles/experience" }
        wants.xml  { render :xml => @experience.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /experiences/1
  # PUT /experiences/1.xml
  def update
    respond_to do |wants|
      if @experience.update_attributes(params[:experience])
        flash[:notice] = 'Experience was successfully updated.'
        wants.html { redirect_to(@experience) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @experience.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.xml
  def destroy
    @experience.destroy

    respond_to do |wants|
      wants.html { redirect_to(experience_profiles_path) }
      wants.xml  { head :ok }
    end
  end

  private
  def find_experience
    @experience = Experience.find(params[:id])
  end

end
