# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Liblcg < Formula
  desc "A simple C++ library of linear conjugate gradient method"
  homepage "https://yizhangcug.github.io/liblcg/"
  url "https://github.com/YiZhangCUG/liblcg/archive/v1.5.1.tar.gz"
  sha256 "3c4f31dea68c3a367089d635d29f1096c92506780b4c6d93435d17ccc63543c5"

  depends_on "cmake" => :build
  depends_on "gcc" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install" # if this fails, try separate make/make install steps
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test liblcg`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
