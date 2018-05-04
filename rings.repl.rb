class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.4/rings.repl/rings.repl", :using => :nounzip
  sha256 "adafa3b1e027556d91268c88189815a2ca653c31b80d664791a8bc140f289ab7"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
