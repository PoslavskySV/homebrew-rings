class Algebench < Formula
  # desc "algebench: a tool for benchmarking libraries/systems for doing commutative algebra."
  homepage "https://github.com/PoslavskySV/algebench"
  url "https://github.com/PoslavskySV/algebench/releases/download/v1.1/algebench-1.1.zip"
  version "1.1"
  sha256 "68b745d965be9f27535fd9eb9b185a5734e09770d8ed950b0cc5845f96b20022"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../algebench"
  end

  test do
    system "algebench"
  end
end

