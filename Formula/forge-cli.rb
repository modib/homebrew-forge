class ForgeCli < Formula
  include Language::Python::Virtualenv

  desc "AI-native cross-project workspace manager — the Forge OS project hub"
  homepage "https://github.com/modib/forge-cli"
  url "https://github.com/modib/forge-cli/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "e2fd2bad5121a292ed5e012a4b27a6760ff9fa5c456d45a90be6abe0ec1b6317"
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
