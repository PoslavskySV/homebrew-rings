class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.5.4/rings.repl/rings.repl", :using => :nounzip
  sha256 "6f20b409b665f7688fb7ed927557489084d2e86a1b1973f325ebe8d7e9677adf"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
