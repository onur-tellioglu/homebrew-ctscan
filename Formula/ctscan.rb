class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "efbe0842ddb9ad920237545f482094bd6ae2561a3321c4b98b1b1c6d812cbd7a"
  license "MIT"

  def install
    bin.install "bin/ctscan"
  end

  test do
    system "#{bin}/ctscan", "--version"
  end
end
