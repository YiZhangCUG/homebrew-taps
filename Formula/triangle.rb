# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Triangle < Formula
  desc "A Two-Dimensional Quality Mesh Generator and Delaunay Triangulator."
  homepage "http://www.cs.cmu.edu/~quake/triangle.html"
  url "http://www.netlib.org/voronoi/triangle.zip"
  version "v1.6"
  sha256 "1766327add038495fa3499e9b7cc642179229750f7201b94f8e1b7bee76f8480"

  def install
    system "make ", " CC=gcc-9 CSWITCHES=\"-O2 -I/usr/X11/include -L/usr/X11/lib\""
    bin.install triangle
    bin.install showme
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test triangle2d`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
