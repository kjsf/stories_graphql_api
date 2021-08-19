defmodule StoriesGraphqlApi.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string, unique: true
    field :first_name, :string
    field :last_name, :string
    field :password_hash, :string
    field :password, :string
    field :password_confirmation, :string
    field :role, :string, default: "user"

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :role
    ])
    |> validate_required([
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :role
    ])
    |> validate_format(:email, ~r/@/)
    |> update_change(:email, &String.downcase/1)
    |> validate_length(:password, min: 8, max: 50)
    |> validate_confirmation(:password, message: "Passwords does not match")
    |> unique_constraint(:email)
    |> password_hash()
  end

  defp password_hash(changeset) do
    changeset
  end
end
