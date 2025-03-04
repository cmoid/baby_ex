defmodule Baby.MixProject do
  use Mix.Project

  def project do
    [
      app: :baby,
      version: "0.17.0",
      elixir: "~> 1.13",
      name: "Baby",
      source_url: "https://github.com/mwmiller/baby_ex",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :ranch]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:primacy,">= 0.0.0"},

      # {:baobab, "~> 0.16.0"},
      {:baobab, git: "https://github.com/cmoid/baobab_ex"},
      # use for local hacking
      # {:baobab, path: "/Users/cmoid/code/baobab_ex"},
      {:stlv, "~> 1.0"},
      {:varu64, "~> 1.0"},
      # Third-party
      {:cbor, "~> 1.0"},
      # enacl not needed at all, included by baobab
      # {:enacl, git: "https://git.sr.ht/~cmoid/enacl"},
      # {:enacl, "~> 1.2"},
      {:ranch, "~> 1.8"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Bushbaby Automated Bamboo Yields
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Matt Miller"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/mwmiller/baby_ex"
      }
    ]
  end
end
