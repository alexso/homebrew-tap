class TickerVim < Formula
  desc "Terminal stock ticker with Vim navigation and fuzzy filtering"
  homepage "https://github.com/alexso/ticker-vim"
  version "5.4.2"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexso/ticker-vim/releases/download/v5.4.2/ticker-vim_5.4.2_darwin_arm64.tar.gz"
      sha256 "00c399a822bfbc1e4583153d74a907ae96722304662de0c5888d04391e15ed8d"
    else
      url "https://github.com/alexso/ticker-vim/releases/download/v5.4.2/ticker-vim_5.4.2_darwin_amd64.tar.gz"
      sha256 "e03df7900f2652ea27c7c6803aefc0863a79275a9702bc46d3e66825a0246a77"
    end
  end

  def install
    bin.install "ticker-vim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ticker-vim --version")
  end
end
