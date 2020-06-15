# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GetoptExpd < Formula
  desc "getopt with formatted display of the help information."
  homepage "https://github.com/YiZhangCUG"
  url "https://github.com/YiZhangCUG/getopt_expd/archive/v1.0.0.tar.gz"
  sha256 "9d765d66278622462337eab6561c05ebec2a92b7ed5d65f7cb7b089f796ad81c"

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
    # software. Run the test with `brew test getopt_expd`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
