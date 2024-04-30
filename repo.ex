defmodule.repo do:

defmodule TendermintBlockProcessor.Repo do
  use Ecto.Repo,
    otp_app: :TendermintBlockProcessor,
    adapter: Ecto.Adapters.Postgres
end

defmodule TendermintBlockProcessor.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :age, :integer
    # Add more fields as needed
  end
end
