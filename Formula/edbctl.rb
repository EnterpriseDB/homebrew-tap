# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.5.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.5.0-1/edbctl_1.5.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5a7c245295f5211aea7f28b0663f4ff0acb43224345071960aeff81da9c5a558"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.5.0-1/edbctl_1.5.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "80552e623c1a19155527a99928ba4870fdc703fbb65c23bc0777cccc041e7ce2"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
