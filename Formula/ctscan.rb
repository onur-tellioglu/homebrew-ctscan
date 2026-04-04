class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "5a24efa038b70b7cd3fc35e22ce197c9ecd70ab6f99c41c42c9dbf5c20986670"
  license "MIT"

  def install
    bin.install "bin/ctscan"
    # Ensure script is executable (GitHub tarballs don't preserve execute bits)
    chmod 0755, bin/"ctscan"
  end

  test do
    system "#{bin}/ctscan", "--version"
  end
end
