defmodule PhxPowWeb.Pow.RegistrationView do
  use PhxPowWeb, :view

  # date_of_birth
  def month_first_date_select(form, field, opts \\ []) do
    builder = fn b ->
      ~e{
        <div>
          <%= b.(:month, [class: "date-select"]) %>
          <%= b.(:day, [class: "date-select"]) %>
          <%= b.(:year, [class: "date-select"]) %>
        </div>
      }
    end

    date_select(form, field, [builder: builder] ++ opts)
  end
end
