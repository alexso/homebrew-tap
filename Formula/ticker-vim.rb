class TickerVim < Formula
  desc "Terminal stock ticker with Vim navigation and fuzzy filtering"
  homepage "https://github.com/alexso/ticker-vim"
  version "5.3.2"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexso/ticker-vim/releases/download/v5.3.2/ticker-vim_5.3.2_darwin_arm64.tar.gz"
      sha256 "ffef111f79bfa5a18c9bc57e8ab71b6a1d4811127d079cf0265f83d90075afc6"
    else
      url "https://github.com/alexso/ticker-vim/releases/download/v5.3.2/ticker-vim_5.3.2_darwin_amd64.tar.gz"
      sha256 "143d417d42f3d348034c7b8c83de8530c12594be4721eed690625e24d37d9b0d"
    end
  end

  def install
    bin.install "ticker-vim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ticker-vim --version")
  end
end
