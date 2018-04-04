class Algebench < Formula
  # desc "algebench: a tool for benchmarking libraries/systems for doing commutative algebra."
  homepage "https://github.com/PoslavskySV/algebench"
  url "https://github.com/PoslavskySV/algebench/releases/download/v1.0/algebench-1.0.zip"
  version "1.0"
  sha256 "2fdeaf5d57db14d786c23f993ab0dd7deefdf7162568f995cd49b7b5cc6f8a6f"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../algebench"
  end

  test do
    system "algebench"
  end
end

