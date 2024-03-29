class AttysEcg < Formula
  desc "ECG app for the Attys"
  homepage "http://www.attys.tech"
  url "https://github.com/glasgowneuro/attys-ecg/archive/1.3.4.tar.gz"
  sha256 "759d54b75f752d92f38fb90d340d337574f4ff101935b945d6cc69a9052dc424"

  depends_on "qt5"
  depends_on "attys-comm"
  depends_on "iir"
  depends_on "fir"
  depends_on "qwt"

  def install
    args = %W[-config release]
    system "qmake", "attys-ecg.pro", *args
    system "make"
    system "ls", "-l", "./attys-ecg.app/Contents/MacOS/attys-ecg"
    system "install", "-d", prefix/"bin/"
    system "install", "./attys-ecg.app/Contents/MacOS/attys-ecg", prefix/"bin/"
  end

  test do
    system "echo 1"
  end
end
