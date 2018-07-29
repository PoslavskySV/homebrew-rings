class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.5.1/rings.repl/rings.repl", :using => :nounzip
  sha256 "3dd8cdc57d4a1a6eae7e2e99e14af495a76012bd0da398720ccc6976117d7372"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
