class ForgeCli < Formula
  include Language::Python::Virtualenv

  desc "AI-native cross-project workspace manager — the Forge OS project hub"
  homepage "https://github.com/modib/forge-cli"
  url "https://github.com/modib/forge-cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "19b5c14854600eb6930d2b777d709dd457f438d0b83caff0e2f3bfde87700467"
  license "MIT"

  depends_on "python@3.14"

  def install
    venv = virtualenv_create(libexec)
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/forge", "--version"
  end
end
