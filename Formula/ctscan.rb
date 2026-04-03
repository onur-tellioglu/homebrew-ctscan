class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "3af4c97b7f4f9119cae1f60cae2276a12d908bcfe9043b989f68ed80c4f2d642"
  license "MIT"

  def install
    bin.install "bin/ctscan"
  end

  test do
    system "#{bin}/ctscan", "--version"
  end
end
