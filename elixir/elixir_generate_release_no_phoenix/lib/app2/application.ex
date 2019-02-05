defmodule App2.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    topologies = Application.fetch_env!(:libcluster, :topologies)

    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: App2.Worker.start_link(arg)
      # {App2.Worker, arg}
      
      {Cluster.Supervisor, [topologies, [name: App2.ClusterSupervisor]]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: App2.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
