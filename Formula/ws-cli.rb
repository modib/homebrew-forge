class WsCli < Formula
  include Language::Python::Virtualenv

  desc "AI-native cross-project workspace manager — the Forge OS project hub"
  homepage "https://github.com/modib/ws-cli"
  url "https://github.com/modib/ws-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "5ec4be002844ec4907076f2185972f5d470cd324531cb01144ba4e9e4caa074d"
  license "MIT"

  depends_on "python@3.14"

  def install
    venv = virtualenv_create(libexec)
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/ws", "--version"
  end
end
