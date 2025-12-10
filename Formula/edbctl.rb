# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.1.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.1.0-1/edbctl_1.1.0_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "dd1fac7cf8f35391ba1829675107cf014cbc9f20f29cce2367bfa89e1dd208ed"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.1.0-1/edbctl_1.1.0_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "0142d1a672427ef99dd910088ab79e90ae5d03de1e6f38c6157541e3dfc6b3cc"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
