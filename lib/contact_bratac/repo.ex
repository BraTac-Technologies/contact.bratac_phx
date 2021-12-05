defmodule ContactBratac.Repo do
  use Ecto.Repo,
    otp_app: :contact_bratac,
    adapter: Ecto.Adapters.Postgres
end
