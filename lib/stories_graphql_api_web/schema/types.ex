defmodule StoriesGraphqlApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias StoriesGraphqlApiWeb.Schema.Types

  import_types(Types.AccountsTypes)
end
