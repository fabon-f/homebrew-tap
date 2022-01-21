class Difftance < Formula
  desc "A diff tool to show edit distance"
  homepage "https://github.com/fabon-f/difftance"
  url "https://github.com/fabon-f/difftance/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "fdd264396290dd923e49334cab4f791bae7bd1c7bddd2d434ba70425af6d6515"
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
