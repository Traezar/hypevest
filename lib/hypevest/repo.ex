defmodule Hypevest.Repo do
  use Ecto.Repo,
    otp_app: :hypevest,
    adapter: Ecto.Adapters.Postgres
end
