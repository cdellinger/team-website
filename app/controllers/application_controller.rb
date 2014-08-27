class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :page_load


protected

  def page_load
    @website_name = ENV['WEBSITE_NAME']

    @current_season = Season.where(is_current: true)[0]
    @current_teams = nil
    if @current_season.nil? == false
      @current_teams = Team.where(season_id: @current_season.id)
    end




  	current_minute = Time.now.sec
  	if current_minute < 6
  		@background = 'champs'
  	elsif current_minute < 12
  		@background = 'chaos'
  	elsif current_minute < 18
  		@background = 'checkin'
  	elsif current_minute < 24
  		@background = 'eli'
  	elsif current_minute < 30
  		@background = 'foolingaround'
  	elsif current_minute < 36
  		@background = 'running'
  	elsif current_minute < 42
  		@background = 'trophy'
    elsif current_minute < 48
      @background = 'teampic1'
    else
      @background = 'pile'
  	end
  end


end
