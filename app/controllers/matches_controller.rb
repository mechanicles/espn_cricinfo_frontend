class MatchesController < ApplicationController
  def index
    service           = CrickinfoService.new
    all_matches       = service.get_all_matches_info
    @live_matches     = all_matches["live_matches"]
    @previous_matches = all_matches["previous_matches"]
  end

  def show
    service = CrickinfoService.new
    @match  = service.get_match_info(params[:id])
  end
end
