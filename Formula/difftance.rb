class Difftance < Formula
  desc "A diff tool to show edit distance"
  homepage "https://github.com/fabon-f/difftance"
  url "https://github.com/fabon-f/difftance/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c4080b73c1ff5dc86fea0fa965391af2a65eb8984671c6eced95c88c36aa1b87"
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
