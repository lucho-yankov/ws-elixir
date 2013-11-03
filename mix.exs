defmodule WsElixir.Mixfile do
  use Mix.Project

  def project do
    [ app: :"ws-elixir",
      version: "0.0.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      applications: [:ranch, :crypto, :cowboy, :gproc],
      mod: {WebSocketServer, []},
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      {:cowboy, github: "extend/cowboy"},
      {:gproc, github: "esl/gproc"},
      {:cowlib, github: "extend/cowlib"},
      {:ranch, github: "extend/ranch"}
    ]
  end
end

