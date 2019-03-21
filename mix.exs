defmodule Geolix.Adapter.MMDB2Caching.Mixfile do
  use Mix.Project

  @url_github "https://github.com/elixir-geolix/adapter_mmdb2_caching"

  def project do
    [
      app: :geolix_adapter_mmdb2_caching,
      name: "Geolix Adapter: MMDB2 (Caching)",
      version: "0.1.0-dev",
      elixir: "~> 1.5",
      deps: deps(),
      description: "MMDB2 adapter for Geolix with integrated caching capabilities",
      docs: docs(),
      package: package(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.travis": :test
      ],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:excoveralls, "~> 0.7", only: :test}
    ]
  end

  defp docs do
    [
      extras: ["CHANGELOG.md", "README.md"],
      main: "readme",
      source_ref: "master",
      source_url: @url_github
    ]
  end

  defp package do
    %{
      files: ["CHANGELOG.md", "LICENSE", "mix.exs", "README.md", "lib"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => @url_github},
      maintainers: ["Marc Neudert"]
    }
  end
end
