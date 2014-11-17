require 'formula'

class Mouchy < Formula
    homepage 'https://github.com/fe-lix-/mouchy'
    url 'https://github.com/fe-lix-/mouchy/archive/0.0.2.tar.gz'
    sha1 '0fd41537538bc55216fcdcba9eee02b0fbd5f4ab'
    depends_on 'php-code-sniffer'

    def install
        bin.install('bin/mouchy')
    end

    test do
        system bin/'mouchy', '--version'
    end
end
