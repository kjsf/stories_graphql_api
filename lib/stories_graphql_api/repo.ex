defmodule StoriesGraphqlApi.Repo do
  use Ecto.Repo,
    otp_app: :stories_graphql_api,
    adapter: Ecto.Adapters.Postgres
end
