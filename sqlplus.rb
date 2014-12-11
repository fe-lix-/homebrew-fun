require 'formula'

class Sqlplus < Formula
    homepage 'https://github.com/magento-ecg/coding-standard'
    url 'http://localhost:8000/instantclient-11.2.0.3.zip'
    sha1 '8aed750eab625aa296b4fc6d8ae28972bf033cee'

    def install
        include.install Dir["sdk/include/*.h"]
        bin.install Dir["sqlplus"]
        lib.install Dir["*.dylib", "*.dylib.11.1"]
        #lib.install "libclntsh.dylib.11.1" => "libclntsh.dylib"
    end

    test do
        system bin/'sqlplus'
    end
end
