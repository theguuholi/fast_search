defmodule FastSearch.Repo do
  use Ecto.Repo,
    otp_app: :fast_search,
    adapter: Ecto.Adapters.Postgres
end
