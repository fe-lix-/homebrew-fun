require File.expand_path("/usr/local/Library/Taps/homebrew/homebrew-php/Abstract/abstract-php-extension", __FILE__)

class Php54Oci8 < AbstractPhp54Extension
  init
  homepage 'http://pecl.php.net/package/oci8'
  url 'http://pecl.php.net/get/oci8-2.0.8.tgz'
  sha1 '15235e0f85b54c429bdbf8f6b529243580e504a7'

  depends_on "sqlplus"

  def install
    Dir.chdir "oci8-#{version}"

    safe_phpize
    system "./configure", "--prefix=#{prefix}",
                          phpconfig
    system "make"
    prefix.install "modules/oci8.so"
    write_config_file if build.with? "config-file"
  end
end
