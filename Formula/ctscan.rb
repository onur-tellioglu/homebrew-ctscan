class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7827b1aa887a8b28cb8c5e123c5bbdfa57dff3acbc5ca7f47bf2c705d7925b47"
  license "MIT"

  def install
    bin.install "bin/ctscan"
  end

  test do
    system "#{bin}/ctscan", "--version"
  end
end
