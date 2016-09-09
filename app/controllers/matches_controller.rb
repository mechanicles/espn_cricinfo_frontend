class MatchesController < ApplicationController

  def index
    service = EspnCrickinfoService.new
    all_matches = service.get_all_maches_info["all_matches"]
    @live_matches = all_matches["live_matches"]
    @previous_matches = all_matches["previous_matches"]
  end

  def show
    service = EspnCrickinfoService.new
    @match = service.get_match_info(params[:id])
  end

end


