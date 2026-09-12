class TickerVim < Formula
  desc "Terminal stock ticker with Vim navigation and fuzzy filtering"
  homepage "https://github.com/alexso/ticker-vim"
  version "5.3.3"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexso/ticker-vim/releases/download/v5.3.3/ticker-vim_5.3.3_darwin_arm64.tar.gz"
      sha256 "f0f7233bdf11eed2051716280f3b29eab2a39782e2d06cbd60ac42b098adfae4"
    else
      url "https://github.com/alexso/ticker-vim/releases/download/v5.3.3/ticker-vim_5.3.3_darwin_amd64.tar.gz"
      sha256 "355a0faffb2a9b1882facb2266d3d1475c613d4d53b03182bd17920d786a920f"
    end
  end

  def install
    bin.install "ticker-vim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ticker-vim --version")
  end
end
