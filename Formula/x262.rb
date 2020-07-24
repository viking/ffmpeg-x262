class X262 < Formula
  desc "x262 codec"
  homepage "https://www.videolan.org/developers/x262.html"
  head "http://git.videolan.org/git/x262.git", :revision => "bb887aa4c0a4da955524aa220b62998c3b50504e"

  depends_on 'yasm'
  keg_only 'conflicts with x264'

  def install
    system "./configure", "--prefix=#{prefix}", "--enable-shared"
    system "make", "install-lib-shared"
  end
end
