class AttysScope < Formula
  desc "Oscilloscope and data logger for the Attys DAQ (Linux/Windows/Mac)"
  homepage "http://www.attys.tech"
  url "https://github.com/glasgowneuro/attys-scope/archive/2.0.4.tar.gz"
  sha256 "983f7170827c09cae9eaf097bfa06d0faf57b70ab31f2b102a348b7f7cc703f1"

  depends_on "qt5"
  depends_on "attys-comm"
  depends_on "iir"

  def install
    args = %W[-config release]
    system "qmake", "attys-scope.pro", *args
    system "make"
    system "install", "-d", prefix/"bin/"
    system "install", "./attys-scope.app/Contents/MacOS/attys-scope", prefix/"bin/"
  end

  test do
    system "echo 1"
  end
end
