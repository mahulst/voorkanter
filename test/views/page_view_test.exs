defmodule Voorkanter.PageViewTest do
  use Voorkanter.ConnCase, async: true

  alias Voorkanter.PageView

  test "format_date" do
    {:ok, date } = Date.new(2016, 1, 1)
    formatted_date = PageView.format_date(date)
    assert formatted_date == "January 2016"
  end

  test "format_date_short" do
    {:ok, date } = Date.new(2016, 1, 1)
    formatted_date = PageView.format_date_short(date)
    assert formatted_date == "Jan 2016"
  end
end
