class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.3.7.tar.gz"
  sha256 "894f5b26cc78263ebb153b905b81160bdb0d899d8afc5978a1dddc81b8c5af78"
  license "MIT"

  def install
    libexec.install "bin/ctscan"
    # Wrap in an executable script since GitHub tarballs don't preserve +x
    (bin/"ctscan").write_env_script libexec/"ctscan", {}
  end

  test do
    system "#{bin}/ctscan", "--version"
  end
end
