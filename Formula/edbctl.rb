# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.2.1"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.2.0-1/edbctl_1.2.0_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "9144b145438a7c2d0c3843594cf80b6d8ca05590c43491944541565fcdbdeb5b"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.2.0-1/edbctl_1.2.0_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "b80477051cec49600a5be0c436a531667b48ede58f66aa722ee5b755059ef621"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
