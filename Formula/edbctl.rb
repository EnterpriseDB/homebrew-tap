# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.4.1"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.4.1-1/edbctl_1.4.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0bedc1a8d86d3d12a558a70908ecf85150273baf171e489cb5536ece4664484a"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.4.1-1/edbctl_1.4.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ccbe460558fa673cd23902fcca56f98174e03646f8a7ffbb30b2de13e64a2537"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
