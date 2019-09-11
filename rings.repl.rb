class RingsRepl < Formula
  desc "Rings: efficient Java/Scala library for polynomial rings"
  homepage "http://ringsalgebra.io/"
  url "https://raw.githubusercontent.com/PoslavskySV/rings/v2.5.3/rings.repl/rings.repl", :using => :nounzip
  sha256 "8b402301436eb0f06b50572e9afa0a299a0fc4fe4e76d0eb445d63c537e734df"

  depends_on "ammonite-repl"

  def install
    bin.install "rings.repl"
  end

  test do
    system "#{bin}/rings.repl", "-v"
  end
end
