# typed: false
# frozen_string_literal: true

class PgdCli < Formula
  desc "Postgres Distributed CLI"
  homepage "https://github.com/enterprisedb/homebrew-tap"
  version "6.5.0"

  on_macos do
    depends_on "libpq"

    if Hardware::CPU.arm?
      url "https://downloads.enterprisedb.com/public/homebrew-edb/raw/versions/6.5.0-1/pgd-cli_6.5.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fc39011740ee71c3405b6f4b82ab3f9936c69864f2e598dce0e0a78924d426ea"

      def install
        bin.install "pgd"
        bash_completion.install "completions/pgd.bash" => "pgd"
        fish_completion.install "completions/pgd.fish" => "pgd.fish"
        zsh_completion.install "completions/pgd.zsh" => "_pgd"
      end
    end
  end

end
