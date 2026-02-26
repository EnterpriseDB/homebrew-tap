# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.2.1"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.2.1-1/edbctl_1.2.1_darwin_arm64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "0c18577ca94daf0f2985ec21327fed6e99e36ae3c4ab15f9106ad871559fd136"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.2.1-1/edbctl_1.2.1_darwin_amd64.tar.gz", using: HomebrewCurlDownloadStrategy
      sha256 "87528ccb06f802f42dcd25b80dd253b1b63f59361e803543cbbbda0d31f21624"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
