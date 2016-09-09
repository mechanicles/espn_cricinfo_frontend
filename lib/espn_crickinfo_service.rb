class EspnCrickinfoService

  def get_all_maches_info
    @all_matches ||= JSON.parse(Http.get("#{main_espn_crick_info_url}/matches.json").body)
  end

  def get_match_info(match_id)
    @match ||= JSON.parse(Http.get("#{main_espn_crick_info_url}/matches/#{match_id}.json").body)
  end

  private

  def main_espn_crick_info_url
    # Temporarily added here but this needs to be moved into settings.yml file.

    "http://localhost:3000"
  end

end
