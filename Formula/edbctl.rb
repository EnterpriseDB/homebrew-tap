# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.1.1"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.1.1-1/edbctl_1.1.1_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "ab4e7ca5259176bef61cfdaed3a6fd7bace450843c5839dd78722ad56905dbd1"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.1.1-1/edbctl_1.1.1_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "20fc1582586719758317413c009153296d2a8faeca2f0357aeeb52dbcd518ba7"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
