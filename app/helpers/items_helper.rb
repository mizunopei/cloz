module ItemsHelper
  def compare_price(last_month, this_month)
    if last_month == this_month
      content_tag :div, "(前月比 ±０)", class: "mom"
    elsif last_month > this_month
      content_tag :div, "(前月比 - " + (last_month - this_month).to_s(:delimited) +")", class: "mom decrease"
    else
      content_tag :div, "(前月比 +" + (last_month - this_month).abs.to_s(:delimited) + ")", class: "mom increase"
    end
  end
end
