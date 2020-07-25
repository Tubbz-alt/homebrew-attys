class AttysComm < Formula
  desc "Attys C++ API"
  homepage "https://www.attys.tech/"
  url "https://github.com/glasgowneuro/attys-comm/archive/2.0.14.tar.gz"
  sha256 "51b489b8ec25b8439df2a1453aa176419188c4b4457db1b2355fcd68fc5b07fa"

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
