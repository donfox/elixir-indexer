
defmodule TendermintBlockProcessor.UserContext do
  alias TendermintBlockProcessor.{Repo, User}

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def get_user(id) do
    Repo.get(User, id)
  end

  # Add more functions as needed
end

