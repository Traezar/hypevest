defmodule Hypevest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Hypevest.Repo,
      # Start the Telemetry supervisor
      HypevestWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Hypevest.PubSub},
      # Start the Endpoint (http/https)
      HypevestWeb.Endpoint
      # Start a worker by calling: Hypevest.Worker.start_link(arg)
      # {Hypevest.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Hypevest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    HypevestWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
