defmodule Dogex.MixProject do
  use Mix.Project

  def project do
    [
      app: :dogex,
      version: "0.1.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Elixir JSON-RPC Client for the Dogecoin blockchain",
      package: [
	maintaners: ["Harley Swick"],
	licenses: ["GPLv3"],
	links: %{"GitHub" => "https://github.com/hswick/dogex"}
      ],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:httpoison],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:jason, "~> 1.1"},
      {:ex_doc, ">= 0.0.0", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
