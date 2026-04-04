class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.3.6.tar.gz"
  sha256 "6a6fa700fd0700755f9e89ff15fd43c89368e5a9affa05eaabc69ea14540f105"
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
