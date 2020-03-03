class AttysScope < Formula
  desc "Oscilloscope and data logger for the Attys DAQ (Linux/Windows/Mac)"
  homepage "http://www.attys.tech"
  url "https://github.com/glasgowneuro/attys-scope/archive/2.0.0.tar.gz"
  sha256 "e5e31e8a9861748326ab6047491616dac37d287276454d842eb22a7ef213c927"

  depends_on "qt5"
  depends_on "attys-comm"
  depends_on "iir"

  def install
    args = %W[-config release]
    system "qmake", "attys-scope.pro", *args
    system "make"
    system "ls", "-l", "./attys-scope.app/Contents/MacOS/attys-scope"
    system "install", "-d", prefix/"bin/"
    system "install", "./attys-scope.app/Contents/MacOS/attys-scope", prefix/"bin/"
  end

  test do
    system "echo 1"
  end
end
