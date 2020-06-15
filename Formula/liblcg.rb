class Liblcg < Formula
  desc "A simple C++ library of linear conjugate gradient method."
  homepage "https://yizhangcug.github.io/liblcg/"
  url "https://github.com/YiZhangCUG/liblcg/archive/v1.4.1.tar.gz"
  sha256 "d2ae281fdb85775e193a987ffb7a43155bc55c8a01feefe69ecc609d605f80cb"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
