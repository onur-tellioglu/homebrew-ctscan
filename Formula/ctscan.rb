class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "5c640ead2d2b9418c1cb5edb517d75491a59c8ed448fa0016092ed53203abae5"
  license "MIT"

  depends_on "bash"

  def install
    inreplace "bin/ctscan", "#!/usr/bin/env bash", "#!#{Formula["bash"].opt_bin}/bash"
    libexec.install "bin/ctscan"
    # Wrap in an executable script since GitHub tarballs don't preserve +x
    (bin/"ctscan").write_env_script libexec/"ctscan", {}
  end

  test do
    system "#{bin}/ctscan", "--version"
  end
end
