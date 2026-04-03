class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0dcbee9736ee4e73209c615a4554d4b10293643c2b2d9369b7655bf31121e9da"
  license "MIT"

  def install
    bin.install "bin/ctscan"
  end

  test do
    system "#{bin}/ctscan", "--version"
  end
end
