class AttysScope < Formula
  desc "Oscilloscope and data logger for the Attys DAQ (Linux/Windows/Mac)"
  homepage "http://www.attys.tech"
  url "https://github.com/glasgowneuro/attys-scope/archive/2.0.3.tar.gz"
  sha256 "f96b6aabb5f967dfc7206c1cd3dd74013483de1a29bbf4ff2c8855c3dfb1b85e"

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
