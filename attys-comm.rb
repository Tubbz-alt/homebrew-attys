class AttysComm < Formula
  desc "Attys C++ API"
  homepage "https://github.com/glasgowneuro/attys-comm"
  url "https://github.com/glasgowneuro/attys-comm/archive/2.0.8.tar.gz"
  sha256 ""

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
