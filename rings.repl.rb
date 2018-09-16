class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.5.2/rings.repl/rings.repl", :using => :nounzip
  sha256 "c8bafd660592e73af7a3dbc71ee66e874f90e2a3503820da0738d40cffd39fe3"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
