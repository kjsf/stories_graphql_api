defmodule StoriesGraphqlApiWeb.Resolvers.AccountsResolver do
  alias StoriesGraphqlApi.Accounts

  def users(_parent, _args, _resolution) do
    {:ok, Accounts.list_users()}
  end
end
