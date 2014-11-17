require 'formula'

class Mouchy < Formula
    homepage 'https://github.com/fe-lix-/mouchy'
    url 'https://github.com/fe-lix-/mouchy/archive/0.0.2.tar.gz'
    sha1 'e168f79b374306702d73ef8923f5af36e6a969f8'
    depends_on 'php-code-sniffer'

    def install
        bin.install('bin/mouchy')
    end

    test do
        system bin/'mouchy', '--version'
    end
end
