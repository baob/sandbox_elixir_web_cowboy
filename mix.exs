defmodule HelloWorld.Mixfile do
  use Mix.Project

  def project do
    [
      app: :hello_world,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  #def application do
    #[
      #extra_applications: [:logger]
    #]
  #end
  def application do
    [
      mod: {HelloWorld, []},
      applications: applications(Mix.env)
    ]
  end

  defp applications(:dev), do: applications(:all) ++ [:remix]
  defp applications(_),    do: [:cowboy]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:cowboy, tag: "2.0.0-pre.3", git: "https://github.com/ninenines/cowboy"},
      {:remix, "~> 0.0.1", only: :dev}
    ]
  end
end
