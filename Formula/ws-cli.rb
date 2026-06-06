class WsCli < Formula
  include Language::Python::Virtualenv

  desc "AI-native cross-project workspace manager — the Forge OS project hub"
  homepage "https://github.com/modib/ws-cli"
  url "https://github.com/modib/ws-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "76afa3c27cc4560ad1951f272bca770512b9f56650bdfb29dddf7cc1e750f80c"
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
