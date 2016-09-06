class MatchesController < ApplicationController

  def index
    service = EspnCrickinfoService.new
    @matches = service.get_all_maches_info
  end

  def show
    service = EspnCrickinfoService.new
    @match = service.get_match_info(params[:match_id])
  end

end


