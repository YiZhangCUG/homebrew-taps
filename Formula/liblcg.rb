class Liblcg < Formula
  desc "A simple C++ library of linear conjugate gradient method."
  homepage "https://yizhangcug.github.io/liblcg/"
  url "https://github.com/YiZhangCUG/liblcg/archive/v1.5.1.tar.gz"
  sha256 "20edb4f14594dbc83c1dc61e22247f772d1ef01c37991de2fa8365ba0106cd70"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install" # if this fails, try separate make/make install steps
    end
  end
end