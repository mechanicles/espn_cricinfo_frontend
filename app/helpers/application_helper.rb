module ApplicationHelper

  def formatted_match_end_result(end_result)
    return "" if end_result.blank?

    if end_result != "tied"
      "#{end_result} this match"
    else
      "Match got tied"
    end
  end

  def handle_css_class(end_result)
    if end_result.present?
      ""
    else
      "green-color"
    end
  end

end
