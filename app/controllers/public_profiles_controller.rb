class PublicProfilesController < ApplicationController
  # GET /public_profiles/1
  # GET /public_profiles/1.xml
  def show
    @user = User.where(:permalink => params[:id]).first
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @education }
    end
  end
end
