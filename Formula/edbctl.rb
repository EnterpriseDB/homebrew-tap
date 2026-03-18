# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.3.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.3.0-1/edbctl_1.3.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "59029f6ebac0d9b60aad2d0e41bcd4ccd371b471ce6a522d348fde9bf2849b6d"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.3.0-1/edbctl_1.3.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "75262e6bc40218940e114ed3ce7ac63bff0d4e65e2ec2101dc48072d9a37ffd6"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
