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
  	if current_minute < 4
  		@background = 'champs'
  	elsif current_minute < 8
  		@background = 'chaos'
  	elsif current_minute < 12
  		@background = 'checkin'
  	elsif current_minute < 16
  		@background = 'eli'
  	elsif current_minute < 20
  		@background = 'foolingaround'
  	elsif current_minute < 24
  		@background = 'running'
  	elsif current_minute < 28
  		@background = 'trophy'
    elsif current_minute < 32
      @background = 'teampic1'
    elsif current_minute < 36
      @background = 'DSC_0189'
    elsif current_minute < 40
      @background = 'spring_lineup'
    elsif current_minute < 44
      @background = 'pile'
    else
      @background = '2014_fall_u12_team'
  	end
  end


end
