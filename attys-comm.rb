class AttysComm < Formula
  desc "Attys C++ API"
  homepage "https://www.attys.tech/"
  url "https://github.com/glasgowneuro/attys-comm/archive/2.0.9.tar.gz"
  sha256 "9cfdb6d6395fd2e10e2806c8171e4984747f75b8af715a53e3b8960262051da6"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"
  end

  test do
    system "echo 1"
  end
end
