class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.4/rings.repl/rings.repl", :using => :nounzip
  sha256 "a604965d5a4b0d68399b628eaedab1cce02e230b7ffb28d3955a6fe94105de7b"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
