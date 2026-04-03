class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "4a27223c7061856aee9fb4c315230bf4b87f8785afa72e098d6742eb4eea21d9"
  license "MIT"

  def install
    bin.install "bin/ctscan"
  end

  test do
    system "#{bin}/ctscan", "--version"
  end
end
