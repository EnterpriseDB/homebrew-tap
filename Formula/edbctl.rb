# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.6.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.6.0-1/edbctl_1.6.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c6db23a27a4e10f1b6d779ea03fb6081466d37491b09a32bf67854164c7ff40c"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.6.0-1/edbctl_1.6.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b4b378e3caae307cc39bc8f4d635bfbf8ca1884fd463461c52a55e7941b7f9dd"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
