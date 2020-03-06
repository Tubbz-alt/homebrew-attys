class AttysComm < Formula
  desc "Attys C++ API"
  homepage "https://www.attys.tech/"
  url "https://github.com/glasgowneuro/attys-comm/archive/2.0.10.tar.gz"
  sha256 "cc4c0c26be55a78a8c7ec9c42d94f4267f56c4e94e8ba4c9b99d7a59326f0760"

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
