# frozen_string_literal: true

require 'net/http'

class CrickinfoService
  def get_all_matches_info
    uri = parse_uri("#{backend_espncrickinfo_url}/matches.json")
    JSON.parse(Net::HTTP.get(uri))['all_matches']
  end

  def get_match_info(match_id)
    uri = parse_uri("#{backend_espncrickinfo_url}/matches/#{match_id}.json")
    JSON.parse(Net::HTTP.get(uri))
  end

  private

  def backend_espncrickinfo_url
    ENV['BACKEND_ESPNCRICKINFO_URL']
  end

  def parse_uri(uri_address)
    escaped_address = URI.escape(uri_address)
    URI.parse(escaped_address)
  end
end
