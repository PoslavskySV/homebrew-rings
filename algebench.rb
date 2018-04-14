class Algebench < Formula
  # desc "algebench: a tool for benchmarking libraries/systems for doing commutative algebra."
  homepage "https://github.com/PoslavskySV/algebench"
  url "https://github.com/PoslavskySV/algebench/releases/download/v1.1/algebench-1.1.zip"
  version "1.1"
  sha256 "cc1cbec95d522c83a8e919936c8c8d10348b57a49bb8f6f28b612c35f3525741"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../algebench"
  end

  test do
    system "algebench"
  end
end

