class TickerVim < Formula
  desc "Terminal stock ticker with Vim navigation and fuzzy filtering"
  homepage "https://github.com/alexso/ticker-vim"
  version "5.3.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexso/ticker-vim/releases/download/v5.3.1/ticker-vim_5.3.1_darwin_arm64.tar.gz"
      sha256 "bc13b50748cadcb69d436b76f8c8af0173bb703075eb0b0287d4cfa261c41050"
    else
      url "https://github.com/alexso/ticker-vim/releases/download/v5.3.1/ticker-vim_5.3.1_darwin_amd64.tar.gz"
      sha256 "fd88d9f80226c734421aa3d1bc838c7a09b2a1fd638578d529b2b1d23be9c040"
    end
  end

  def install
    bin.install "ticker-vim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ticker-vim --version")
  end
end
