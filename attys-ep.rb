class AttysEp < Formula
  desc "Visually evoked potentials / PSTH program for the Attys"
  homepage "http://www.attys.tech"
  url "https://github.com/glasgowneuro/attys-ep/archive/1.1.0.tar.gz"
  sha256 "ebf80d9559a6c34fef1f070aaaaf641bc082b5d85b43d64f7307a4225e2d306c"

  depends_on "qt5"
  depends_on "attys-comm"
  depends_on "iir"
  depends_on "qwt"

  def install
    args = %W[-config release]
    system "qmake", "attys-ep.pro", *args
    system "make"
    system "ls", "-l", "./attys-ep.app/Contents/MacOS/attys-ep"
    system "install", "-d", prefix/"bin/"
    system "install", "./attys-ep.app/Contents/MacOS/attys-ep", prefix/"bin/"
  end

  test do
    system "echo 1"
  end
end
