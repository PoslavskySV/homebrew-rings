class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.5.6/rings.repl/rings.repl", :using => :nounzip
  sha256 "58a4f2095bed9fe335ed76681c39c6cd785c09e09834faa62580330f9b81f330"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
