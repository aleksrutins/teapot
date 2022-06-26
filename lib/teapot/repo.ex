defmodule Teapot.Repo do
  use Ecto.Repo,
    otp_app: :teapot,
    adapter: Ecto.Adapters.Postgres
end
