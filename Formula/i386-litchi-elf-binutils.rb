class I386LitchiElfBinutils < Formula

  desc "FSF Binutils for i386-elf cross development"
  homepage "https://www.gnu.org/software/binutils/binutils.html"
  url "https://ftp.gnu.org/gnu/binutils/binutils-2.34.tar.xz"
  mirror "https://ftpmirror.gnu.org/binutils/binutils-2.34.tar.xz"
  sha256 "f00b0e8803dc9bab1e2165bd568528135be734df3fabf8d0161828cd56028952"

  bottle do
    root_url "https://dl.bintray.com/bugenzhao/bottles-litchi"
    sha256 "59efb6d5869075109f46ae81701ee9af178be834152b1b0d408f365f3f761802" => :catalina
  end

  def install
    args = [
      "--prefix=#{prefix}",
      "--disable-werror",
      "--disable-nls",
      "--target=i386-litchi-elf"
    ]

    system "./configure", *args
    system "make"
    system "make", "install"

    info.rmtree
  end
end
