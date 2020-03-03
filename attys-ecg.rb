class AttysEcg < Formula
  desc "ECG app for the Attys"
  homepage "http://www.attys.tech"
  url "https://github.com/glasgowneuro/attys-ecg/archive/1.3.0.tar.gz"
  sha256 "ec7b0e576c258ab11104421d07397146cd4e833a30ee193d03d573a2acf09869"

  depends_on "qt5"
  depends_on "attys-comm"
  depends_on "iir"
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