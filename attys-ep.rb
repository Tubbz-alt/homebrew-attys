class AttysEp < Formula
  desc "Visually evoked potentials / PSTH program for the Attys"
  homepage "http://www.attys.tech"
  url "https://github.com/glasgowneuro/attys-ep/archive/1.1.1.tar.gz"
  sha256 "2a010e73c51039581ecf3f95990f8b19ee972b673a639702a51d0a4b10fcaad2"

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
