class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "8449bd941140509e3aef075a0cfc9b886846458729943c8634c9ce34f7f70b08"
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
