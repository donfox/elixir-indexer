
defmodule TenderMintBlockParser.MixProject do
  use Mix.Project

  def project do
    [
      app: :TenderMintBlockParser,
      version: "0.1.0",
      # Other project configurations...
    ]
  end

  defp deps do
    [
      {:pg2, "~> 2.0"},
      {:ecto, "~> 3.7"},
      {:postgrex, "~> 0.15"}
      # Other dependencies...
    ]
  end

  def application do
    [
      extra_applications: [:logger, :pg2]
    ]
  end

  def start(_type, _args) do
    TendermintBlockProcessor.start()
  end

  # Read configuration from config.exs file using Config.Reader
  config_path = Path.join([Path.dirname(__DIR__), "config.exs"])
  Config.Reader.read_and_apply(config_path)
end
