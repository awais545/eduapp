class EducationsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_education, :only => [:show, :edit, :update, :destroy]

  # GET /educations
  # GET /educations.xml
  def index
    @educations = Education.all

    respond_to do |wants|
      wants.html # index.html.erb
      wants.xml  { render :xml => @educations }
    end
  end

  # GET /educations/1
  # GET /educations/1.xml
  def show
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @education }
    end
  end

  # GET /educations/new
  # GET /educations/new.xml
  def new
    @education = Education.new

    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @education }
    end
  end

  # GET /educations/1/edit
  def edit
  end

  # POST /educations
  # POST /educations.xml
  def create
    @education = current_user.educations.new(params[:education])

    respond_to do |wants|
      if @education.save
        flash[:notice] = 'Education was successfully created.'
        wants.html { redirect_to(education_profiles_path) }
        wants.xml  { render :xml => @education, :status => :created, :location => @education }
      else
        wants.html { render :action => "../profiles/education" }
        wants.xml  { render :xml => @education.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /educations/1
  # PUT /educations/1.xml
  def update
    respond_to do |wants|
      if @education.update_attributes(params[:education])
        flash[:notice] = 'Education was successfully updated.'
        wants.html { redirect_to(@education) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @education.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /educations/1
  # DELETE /educations/1.xml
  def destroy
    @education.destroy

    respond_to do |wants|
      wants.html { redirect_to(education_profiles_path) }
      wants.xml  { head :ok }
    end
  end

  private
    def find_education
      @education = Education.find(params[:id])
    end

end

