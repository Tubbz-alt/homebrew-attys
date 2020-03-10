class AttysComm < Formula
  desc "Attys C++ API"
  homepage "https://www.attys.tech/"
  url "https://github.com/glasgowneuro/attys-comm/archive/2.0.12.tar.gz"
  sha256 "9a9bedb3d0ad956f41272cc38dd61c3eda7e85a7b461cf6d741740b1eec9e74a"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args, "-DCMAKE_BUILD_TYPE=Release"
    system "make"
    system "make install"
  end

  test do
    system "echo 1"
  end
end
