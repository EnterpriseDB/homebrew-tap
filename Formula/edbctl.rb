# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.3.1"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.3.1-1/edbctl_1.3.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "555f326107d131eb170600827641989e5ce0cf071829acf66457ef5fc065a4bd"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.3.1-1/edbctl_1.3.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ec0747a7f5b9ae6ed1eafe8a4ae6dbf4a44b2260af9d16fb3c4675fbb607ccfe"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
