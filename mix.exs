defmodule AlixirOss.MixProject do
  use Mix.Project

  @project_host "https://github.com/GreenNerd-Labs/alixir_oss"
  @version "0.2.0"

  def project do
    [
      app: :alixir_oss,
      version: @version,
      source_url: @project_host,
      homepage_url: @project_host,
      description: description(),
      package: package(),
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:timex]
    ]
  end

  defp deps do
    [
      {:alixir_core, github: "GreenNerd-Labs/alixir_core", branch: "develop"},
      {:mime, "~> 1.3.0"},
      {:poison, "~> 4.0"},
      {:sweet_xml, "~> 0.6.5"},
      {:junit_formatter, ">= 0.0.0", only: :test},
      {:ex_doc, "~> 0.18.0", only: :dev}
    ]
  end

  defp description do
    "Aliyun OSS adapter."
  end

  defp package do
    [
      name: :alixir_oss,
      files: ["lib", "mix.exs", "README*", "MIT-LICENSE"],
      maintainers: ["CptBreeza"],
      licenses: ["MIT"],
      links: %{"GitHub" => @project_host}
    ]
  end
end
