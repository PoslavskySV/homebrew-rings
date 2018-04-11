class Algebench < Formula
  # desc "algebench: a tool for benchmarking libraries/systems for doing commutative algebra."
  homepage "https://github.com/PoslavskySV/algebench"
  url "https://github.com/PoslavskySV/algebench/releases/download/v1.1/algebench-1.1.zip"
  version "1.1"
  sha256 "f6b7fa048531e874b5fc4fbab647cfb1d801fd3fb58283aab3b3282a278aaf6c"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../algebench"
  end

  test do
    system "algebench"
  end
end

