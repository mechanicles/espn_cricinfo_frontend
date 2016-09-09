module ApplicationHelper

  def formatted_match_end_result(end_result)
    return "" if end_result.blank?

    if end_result != "tied"
      "#{end_result} this match"
    else
      "Match got tied"
    end
  end

end
