# typed: false
# frozen_string_literal: true

class Edbctl < Formula
  desc "EnterpriseDB HM edbctl CLI Tool"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "1.4.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.4.0-hm.2026.4-1/edbctl_1.4.0-hm.2026.4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "de21640683b003a51801be403ee1575db80856dfa9a0f64a5cf37236a6607b7a"

      def install
        bin.install "edbctl"
      end
    end

    if Hardware::CPU.intel?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/1.4.0-hm.2026.4-1/edbctl_1.4.0-hm.2026.4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "218ff8793a142fb261e0dd5b2ccabb0bb829d43ea26449b239efca7c527b0ea4"
      
      def install
        bin.install "edbctl"
      end
    end
  end

end
