class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.5.5/rings.repl/rings.repl", :using => :nounzip
  sha256 "23154a8446f1d4e41e16fec254814b71c813a7aaf99c4b80fbd515b5e0b37c40"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
