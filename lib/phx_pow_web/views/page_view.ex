defmodule PhxPowWeb.PageView do
  use PhxPowWeb, :view

  defp format_date_of_birth(date) do
    case Timex.format(date, "{Mshort} {D}, {YYYY}") do
      {:ok, date} -> date
      {:error, message} -> message
    end
  end

  defp format_date(date) do
    case Timex.format(date, "{0M}/{D}/{YYYY}") do
      {:ok, date} -> date
      {:error, message} -> message
    end
  end
end
