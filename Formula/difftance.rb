class Difftance < Formula
  desc "A diff tool to show edit distance"
  homepage "https://github.com/fabon-f/difftance"
  url "https://github.com/fabon-f/difftance/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b33702dd6223e2fab68853d249c637b64cff920ae5c59134a6531f077eb1dc1a"
  license "MIT"

  depends_on "crystal"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  def test
    output = shell_output("${bin}/difftance --help")
    assert_match "difftance", output
  end
end
