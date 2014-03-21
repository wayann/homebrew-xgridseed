require 'formula'

class Bfgminer < Formula
  homepage 'https://github.com/wayann/bfgminer'
  head 'https://github.com/wayann/bfgminer.git', :branch => 'feature/gridseed-support'
  url 'https://github.com/wayann/bfgminer/archive/feature/gridseed-support.tar.gz'
  sha1 'b38d63bf74d3272112a36eb5959276004a94b7da'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'uthash' => :build
  depends_on 'curl'
  depends_on 'jansson'
  depends_on 'libmicrohttpd'
  depends_on 'libevent'
  depends_on 'libusb'
  depends_on 'hidapi'

  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "PKG_CONFIG_PATH=#{HOMEBREW_PREFIX}/opt/curl/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/jansson/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libmicrohttpd/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libusb/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/hidapi/lib/pkgconfig",
                          "--enable-scrypt",
                          "--enable-icarus",
                          "--enable-opencl"
    system "make", "install"
  end

  test do
    system "bfgminer"
  end
end
