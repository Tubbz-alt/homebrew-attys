class AttysComm < Formula
  desc "Attys C++ API"
  homepage "https://www.attys.tech/"
  url "https://github.com/glasgowneuro/attys-comm/archive/2.0.13.tar.gz"
  sha256 "f80590d87485429fafece162b8a6384591a37fdd866eb2c4b666013bd88ec2f4"

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
