class AttysComm < Formula
  desc "Attys C++ API"
  homepage "https://www.attys.tech/"
  url "https://github.com/glasgowneuro/attys-comm/archive/2.0.11.tar.gz"
  sha256 "9d375be290317b9ce751901b62120d891f14285b391f0c7686abe8f214e6413f"

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
