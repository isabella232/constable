defmodule Constable.Repo do
  import Ecto.Query
  use Ecto.Repo,
    otp_app: :constable,
    adapter: Ecto.Adapters.Postgres

  def count(query) do
    __MODULE__.all(from record in query, select: count(record.id))
    |> List.first
  end
end
