defmodule StoriesGraphqlApiWeb.Resolvers.AccountsResolver do
  alias StoriesGraphqlApi.Accounts

  def users(_parent, _args, _resolution) do
    {:ok, Accounts.list_users()}
  end

  def register_user(_parent, %{input: input}, _res) do
    Accounts.create_user(input)
  end
end
