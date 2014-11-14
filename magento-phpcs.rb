require 'formula'

class MagentoPhpcs < Formula
    homepage 'https://github.com/magento-ecg/coding-standard'
    url 'https://github.com/fe-lix-/coding-standard/archive/0.0.1.tar.gz'
    sha1 '0fd41537538bc55216fcdcba9eee02b0fbd5f4ab'
    depends_on 'php-code-sniffer'

    def install
        mkdir_p 'Ecg'
        mv Dir['Sniffs', 'Tests', 'ruleset.xml'], 'Ecg'
        prefix.install 'Ecg'
        rm_rf etc + 'php-code-sniffer/Standards' + 'Ecg' 
        (etc + 'php-code-sniffer/Standards/').install_symlink prefix + 'Ecg'
    end

    test do
        system bin/'phpcs', '--standard=Ecg', '-e'
    end
end
