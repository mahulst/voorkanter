defmodule Voorkanter.PageView do
  use Voorkanter.Web, :view
  require Logger

  def format_date(date) do
    Timex.format!(date, "{Mfull} {YYYY}")
  end

  def format_date_short(date) do
    Timex.format!(date, "{Mshort} {YYYY}")
  end
end
