class TickerVim < Formula
  desc "Terminal stock ticker with Vim navigation and fuzzy filtering"
  homepage "https://github.com/alexso/ticker-vim"
  version "5.4.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexso/ticker-vim/releases/download/v5.4.1/ticker-vim_5.4.1_darwin_arm64.tar.gz"
      sha256 "955cd9d4959d90b0bd1e480839c6a6ee1c37ce5b94b1894ae11ded3820883cd4"
    else
      url "https://github.com/alexso/ticker-vim/releases/download/v5.4.1/ticker-vim_5.4.1_darwin_amd64.tar.gz"
      sha256 "d1c6ccccecd874105f8e341b2b70202d26bde77a4269292bf73e1b258a20d940"
    end
  end

  def install
    bin.install "ticker-vim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ticker-vim --version")
  end
end
