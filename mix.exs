defmodule Rabbit.MixProject do
  use Mix.Project

  @version "0.3.0"

  def project do
    [
      app: :rabbit,
      version: @version,
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "Rabbit",
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:lager, :logger],
      mod: {Rabbit.Application, []}
    ]
  end

  defp description do
    """
    A set of tools for building applications with RabbitMQ.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Nicholas Sweeting"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/nsweeting/rabbit"}
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      main: "readme",
      source_url: "https://github.com/nsweeting/rabbit"
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:amqp, "~> 1.1"},
      {:poolboy, "~> 1.5"},
      {:keyword_validator, "~> 0.4"},
      {:jason, "~> 1.1", optional: true},
      {:benchee, "~> 1.0", only: :dev, runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:inch_ex, github: "rrrene/inch_ex", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.20", only: :dev, runtime: false}
    ]
  end
end
