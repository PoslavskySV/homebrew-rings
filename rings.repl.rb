class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.5.7/rings.repl/rings.repl", :using => :nounzip
  sha256 "7fafab04f3c8595c1cb14ece30717e80d903c4153dc94404a719cd5d5c78c3ad"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
