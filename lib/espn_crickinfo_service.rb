class EspnCrickinfoService

  def get_all_maches_info
    @all_matches ||= JSON.parse(Http.get("#{backend_espncrickinfo_url}/matches.json").body)
  end

  def get_match_info(match_id)
    @match ||= JSON.parse(Http.get("#{backend_espncrickinfo_url}/matches/#{match_id}.json").body)
  end

  private

  def backend_espncrickinfo_url
    @url ||= ENV["BACKEND_ESPNCRICKINFO_URL"]
  end

end
