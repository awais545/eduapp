class PublicProfilesController < ApplicationController
  # GET /public_profiles/1
  # GET /public_profiles/1.xml
  def show
    @user = User.where(:permalink => params[:id]).first
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @education }
    end
  end
end
