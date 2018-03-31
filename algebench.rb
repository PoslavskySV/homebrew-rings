class Algebench < Formula
  # desc "algebench: a tool for benchmarking libraries/systems for doing commutative algebra."
  homepage "https://github.com/PoslavskySV/algebench"
  url "https://github.com/PoslavskySV/algebench/releases/download/v1.0/algebench-1.0.zip"
  version "1.0"
  sha256 "22cff4c32d850571707d7ab27674894ccb1d912610b3c5d9090bf78acaba00fd"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../algebench"
  end

  test do
    system "algebench"
  end
end

