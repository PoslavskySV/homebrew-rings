class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.1/rings.repl/rings.repl", :using => :nounzip
  sha256 "a5af361bc005d96c7cca977cb4f2fe4f86004d6e416f499f4c185029966e8771"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
