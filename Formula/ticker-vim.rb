class TickerVim < Formula
  desc "Terminal stock ticker with Vim navigation and fuzzy filtering"
  homepage "https://github.com/alexso/ticker-vim"
  version "5.4.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alexso/ticker-vim/releases/download/v5.4.0/ticker-vim_5.4.0_darwin_arm64.tar.gz"
      sha256 "9e2afdf2499118362dab0b88bb8386af78c6d0b302417d83d2f4d9aa844f386b"
    else
      url "https://github.com/alexso/ticker-vim/releases/download/v5.4.0/ticker-vim_5.4.0_darwin_amd64.tar.gz"
      sha256 "64197b0b9418f7999adbe38d0948101bc79c0737aadb275b18f4c7a7f4d19320"
    end
  end

  def install
    bin.install "ticker-vim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ticker-vim --version")
  end
end
