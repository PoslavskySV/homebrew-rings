class Algebench < Formula
  # desc "algebench: a tool for benchmarking libraries/systems for doing commutative algebra."
  homepage "https://github.com/PoslavskySV/algebench"
  url "https://github.com/PoslavskySV/algebench/releases/download/v1.1/algebench-1.1.zip"
  version "1.1"
  sha256 "b6acb3d76a4216e7045a34deaccc419953068d997e5607f336a446881b3be51b"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../algebench"
  end

  test do
    system "algebench"
  end
end

