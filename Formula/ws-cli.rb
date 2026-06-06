class WsCli < Formula
  include Language::Python::Virtualenv

  desc "AI-native cross-project workspace manager — the Forge OS project hub"
  homepage "https://github.com/modib/ws-cli"
  url "https://github.com/modib/ws-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c15edd7fc9ea3408ac0d71dcd8b2faf50d149d87b8a1dcbf97feefd7bd028c20"
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
