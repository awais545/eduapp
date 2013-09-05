class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  def index
  end

  def commitment
  end

  def education
  #@education = current_user.educations.build
  end

  def experiences
  end

  def about
  end

  def update
    respond_to do |wants|
      if current_user.update_attributes(params[:user])
        flash[:notice] = 'User profile was successfully updated.'
        wants.html { redirect_to(profiles_path) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @model.errors, :status => :unprocessable_entity }
      end
    end
  end
end

