class ForgeCli < Formula
  include Language::Python::Virtualenv

  desc "AI-native cross-project workspace manager — the Forge OS project hub"
  homepage "https://github.com/modib/forge-cli"
  url "https://github.com/modib/forge-cli/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "17ab651c562606f6c79849759b86c224e6443db869f07f840ab93a43efdf5bb8"
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
