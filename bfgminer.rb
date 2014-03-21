require 'formula'

class Bfgminer < Formula
  homepage 'https://github.com/nwoolls/bfgminer'
  head 'https://github.com/nwoolls/bfgminer.git', :branch => 'feature/gridseed-support'
  url 'https://github.com/nwoolls/bfgminer/archive/feature/gridseed-support.tar.gz'
  sha1 'b4fde7fb11f170866edf80ecb539bfbd2cb7ee5e'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build
  depends_on 'pkg-config' => :build
  depends_on 'coreutils' => :build
  depends_on 'curl'

  def install
    inreplace "autogen.sh", "libtoolize", "glibtoolize"
    inreplace "autogen.sh", "readlink", "greadlink"
    system "autoreconf -fvi"
    system "./autogen.sh", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "PKG_CONFIG_PATH=#{HOMEBREW_PREFIX}/opt/curl/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/jansson/lib/pkgconfig:#{HOMEBREW_PREFIX}/opt/libusb/lib/pkgconfig",
                          "--enable-scrypt",
                          "--enable-bflsc",
                          "--enable-bitforce",
                          "--enable-icarus",
                          "--enable-modminer",
                          "--enable-ztex",
                          "--enable-avalon",
                          "--disable-adl",
                          "--enable-opencl",
                          "--enable-bitfury",
                          "--enable-hashfast",
                          "--enable-klondike"
    system "make", "install"
  end

  test do
    system "cgminer"
  end
end
