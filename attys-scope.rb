class AttysScope < Formula
  desc "Oscilloscope and data logger for the Attys DAQ (Linux/Windows/Mac)"
  homepage "http://www.attys.tech"
  url "https://github.com/glasgowneuro/attys-scope/archive/2.0.2.tar.gz"
  sha256 "cb58040c8cfb62c1ab68bf92e70d8469ab69ecefcecee3791ef68a0f945b7f26"

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
