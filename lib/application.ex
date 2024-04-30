defmodule MyApp.Application do
  use Application

  def start(_type, _args) do
    children = [
      MyApp.Repo
      # Add other children as needed
    ]

    opts = [strategy: :one_for_one, name: MyApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

