class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.3/rings.repl/rings.repl", :using => :nounzip
  sha256 "e0edbbb50b0e5bace149cb5524d9bd741494b4cdd8fd1f4b2d5da4ff9f7b4537"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
