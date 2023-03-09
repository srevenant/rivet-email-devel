defmodule Rivet.Email.Devel.MixProject do
  use Mix.Project

  def project do
    [
      app: :rivet_email_devel,
      version: "1.0.0",
      elixir: "~> 1.13",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      source_url: "https://github.com/srevenant/rivet-email",
      docs: [
        main: "Rivet.Email.Devel",
        extras: ["README.md"]
      ],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.html": :test
      ],
      deps: deps(),
      dialyzer: [
        ignore_warnings: ".dialyzer_ignore.exs",
        plt_file: {:no_warn, "priv/plts/dialyzer.plt"}
      ],
      package: package(),
      description: description()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :timex, {:ex_unit, :optional}]
    ]
  end

  defp elixirc_paths(:test), do: ["example", "lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      # please alphabetize
      {:ex_machina, "~> 2.7.0", only: :test, runtime: false},
    ]
  end

  defp description() do
    """
    Devel elements for Rivet.Email
    """
  end

  defp package() do
    [
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/srevenant/rivet-email-devel"},
      source_url: "https://github.com/srevenant/rivet-email-devel"
    ]
  end
end
