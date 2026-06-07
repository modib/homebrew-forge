class ForgeCli < Formula
  include Language::Python::Virtualenv

  desc "AI-native cross-project workspace manager — the Forge OS project hub"
  homepage "https://github.com/modib/forge-cli"
  url "https://github.com/modib/forge-cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "f7c6dde6abfd10a6e975452a1cbad9ee626c6b8761f7208271da5c5a72edf932"
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
