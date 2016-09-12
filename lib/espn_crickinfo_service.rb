class EspnCrickinfoService
  def get_all_maches_info
    JSON.parse Http.get("#{backend_espncrickinfo_url}/matches.json").body
  end

  def get_match_info(match_id)
    JSON.parse Http.get("#{backend_espncrickinfo_url}/matches/#{match_id}.json").body
  end

  private

  def backend_espncrickinfo_url
    ENV["BACKEND_ESPNCRICKINFO_URL"]
  end
end
