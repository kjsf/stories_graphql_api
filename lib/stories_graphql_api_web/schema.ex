defmodule StoriesGraphqlApiWeb.Schema do
  use Absinthe.Schema

  alias StoriesGraphqlApiWeb.Resolvers

  import_types(StoriesGraphqlApiWeb.Schema.Types)

  query do
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.users/3)
    end
  end
end
