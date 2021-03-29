#
# Author: Rongyang Sun <sun-rongyang@outlook.com>
# Creation Date: 2021-03-22 10:00
#
# Description: Homebrew formula for GraceQ/tensor.
#
class Gqten < Formula
  desc "A high-performance tensor computation framework for the quantum physics community"
  homepage "https://tensor.gracequantum.org"
  license "LGPL-3.0-only"

  url "https://github.com/gracequantum/tensor/archive/refs/tags/v0.2-alpha.1.tar.gz"
  sha256 "2577a3d62fd6db083de161460d6305f4cdc15a83e038c5d37a3130817548673e"
  head "https://github.com/gracequantum/tensor.git", :branch => "dev-v0.2"

  depends_on "cmake" => [:build, :test]

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "false"
  end
end
