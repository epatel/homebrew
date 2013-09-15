require 'formula'

class Pmccabe < Formula
  homepage 'http://packages.debian.org/stable/pmccabe'
  url 'http://ftp.de.debian.org/debian/pool/main/p/pmccabe/pmccabe_2.6.tar.gz'
  sha1 '6e1378b28faf822339780829f3cb9e2d897c5c4d'

  def install

    ENV.append_to_cflags '-D__unix'

    system "make"

    bin.install('pmccabe')
    bin.install('codechanges')
    bin.install('decomment')
    bin.install('vifn')

    man1.install ['pmccabe.1']
    man1.install ['codechanges.1']
    man1.install ['decomment.1']
    man1.install ['vifn.1']

  end
end
