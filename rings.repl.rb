class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.3.2/rings.repl/rings.repl", :using => :nounzip
  sha256 "c853015827d368d0b2c802fec96e28cf37c5f7357078af0ba73a82109d407a8e"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
