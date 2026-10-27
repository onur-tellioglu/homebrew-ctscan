class Ctscan < Formula
  desc "macOS system health scanner"
  homepage "https://github.com/onur-tellioglu/ctscan"
  url "https://github.com/onur-tellioglu/ctscan/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "3fa5aa5a44125e8c5aa88c9bf71b43c468fef179a0aac78cbea6a53d3db67e14"
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
