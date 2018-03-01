class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.3/rings.repl/rings.repl", :using => :nounzip
  sha256 "5e35aa2194633eb9dae6b8e697c628adf100b05c24984703cce5500a822bee7e"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
